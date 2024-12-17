import clips
from gui import ExpertSystemGUI
import tkinter as tk

def initialize_clips_environment():
    print("Initializing clips environment...")
    env = clips.Environment()
       
    try:
        with open("templates.clp", "r") as file:
            templates = file.read().strip().split("\n\n")
            for temp in templates:
                if temp.strip():
                    env.build(temp)
    except clips.CLIPSError as e:
        print(f"Error in templates.clp: {e}")
        return None

    try:
        with open("rules.clp", "r") as file:
            rules = file.read().strip().split("\n\n")
            for rule in rules:
                if rule.strip():
                    env.build(rule)
    except clips.CLIPSError as e:
        print(f"Error in rules.clp: {e}")
        return None
    
    try:
        with open("horror_movies.clp", "r") as file:
            horrors = file.read().strip().split("\n\n") 
            for horror in horrors:
                if horror.strip():
                    env.build(horror)
    except clips.CLIPSError as e:
        print(f"Error in horror_movies.clp: {e}")
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
