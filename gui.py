'''
This file contains the class responsible for creating GUI
'''
import tkinter as tk

class ExpertSystemGUI:

    def __init__(self, root, environment):
        self.root = root
        self.environment = environment

        self.root.geometry("300x200")

        self.label = tk.Label(root, text="")
        self.label.pack()

        self.button_frame = tk.Frame(root)
        self.button_frame.pack()

        self.display_next_question()
    
    def display_next_question(self): #At the end of this method, the program hangs up and waits for the user to click a button
        print("Display next question called")
        #Clear previous buttons:
        for widget in self.button_frame.winfo_children():
            widget.destroy()
        
        #Find the current question: - there's only one fact of template question at a time in the base of facts.
        question_fact = None
        for fact in self.environment.facts():
            if fact.template.name == "question":
                question_fact = fact
                break

        if not question_fact:
            self.label.config(text="No more questions.")

        question_text = question_fact["text"]
        answers = question_fact["answers"]
        print(f"Text for the label: {question_text}")
        print(f"Text for the buttons: {answers}")
        #Remove the fact (no longer needed):
        question_fact.retract()
        #Update label:
        self.label.config(text=question_text)

        #Create buttons for answers:
        for answer in answers:
            button = tk.Button(self.button_frame, text=answer, command=lambda a=answer: self.submit_answer(a))
            button.pack(side=tk.LEFT)
    
    def submit_answer(self, answer):
        print("In submit_answer method")
        #Assert the selected answer as fact:
        self.environment.assert_string(f"(age {answer})") #This asserts fact called age - of course it should assert different type of fact for each question.

        #Run the environment and update the GUI:
        self.environment.run()

        self.display_next_question()