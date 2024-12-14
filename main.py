import clips
from gui import ExpertSystemGUI
import tkinter as tk

def initialize_clips_environment():
    print("Initializing clips environment...")
    env = clips.Environment()

    #Load template:
    with open("templates.clp", "r") as file:
        env.build(file.read())


    #Load the rules:
    try:
        with open("rules.clp", "r") as file:
            rules = file.read().strip().split("\n\n") #Split rules by empty lines
            for rule in rules:
                if rule.strip():
                    env.build(rule)
    except clips.CLIPSError as e:
        print(f"Error in rules.clp: {e}")
        return None
    
    env.run()
    return env

if __name__=="__main__":

    clips_env = initialize_clips_environment()
    print("Environment initialized.")
    root = tk.Tk()
    root.title("Horror movie flowchart")
    gui = ExpertSystemGUI(root, clips_env)
    root.mainloop()