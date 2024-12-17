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
    
    def display_next_question(self):
        print("Display next question called")
       
        for widget in self.button_frame.winfo_children():
            widget.destroy()
        
        question_fact = None
        for fact in self.environment.facts():
            if fact.template.name == "question":
                question_fact = fact
                break

        if not question_fact:
            movie_fact = None
            for fact in self.environment.facts():
                if fact.template.name == "movie":
                    movie_fact = fact
                    break
            
            if movie_fact:
                movie_title = movie_fact["title"]
                self.label.config(text=f"You should watch '{movie_title}'")
            else:
                self.label.config(text="No movie found.")
            return  

        question_text = question_fact["text"]
        answers = question_fact["answers"]
        answers_text = question_fact["answers-text"]
        self.current_fact_name = question_fact["fact-name"]
        print(f"Text for the label: {question_text}")
        print(f"Text for the buttons: {answers_text}")
       
        question_fact.retract()

        self.label.config(text=question_text)

        for i, answer_text in enumerate(answers_text):
            button = tk.Button(self.button_frame, text=answer_text, command=lambda a=answers[i]: self.submit_answer(a))
            button.pack(side=tk.LEFT)
    
    def submit_answer(self, answer):
        print("In submit_answer method")
        self.environment.assert_string(f"({self.current_fact_name} {answer})")

        self.environment.run()
        self.display_next_question()
