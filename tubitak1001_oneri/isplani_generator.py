#26/03/2025 by Sercan Cikintoglu

import tkinter as tk
#import os

class İsplani(tk.Tk):
    def __init__(self):
      super().__init__()

#        self.overrideredirect(True)  # Removes title bar
        
        # Force Ubuntu to recognize as a normal application
#        self.wm_attributes("-type", "normal")  # Register as normal window
#        icon_path = os.path.abspath("ruler.png")
#        if os.path.exists(icon_path):
#            self.iconphoto(False, tk.PhotoImage(file=icon_path))

        # Ensure it keeps focus
#        self.after(100, self.register_with_ubuntu)  # Forces Ubuntu to recognize it        

      self.title("İs Plani")
#        self.minsize(200, 60)  # Adjust for vertical mode
#      self.geometry("200x200")


      self.Labels   = ["İP No:", "İP Ad:", "İP Önem:", "Gerçekleştiriciler:", "Aylar:"] 
      self.defaults = ["1", "Aya yolculuk", "Çok önemli", "Yürütücü", "1"]       
      self.vars = []  # List to store StringVar instances
      self.entries = []  # List to store Entry widgets


#      i=-1
      for i,lb in enumerate(self.Labels):
#         i += 1
         self.l1 = tk.Label(self, text = lb)
         self.l1.grid(row = i, column = 0, sticky = 'e', pady = 5,padx= 5)

          
         wd = 50 if i>0 else 5          
          
         if i<4: 
           var = tk.StringVar(value=self.defaults[i])  # Create a StringVar for each entry
           self.vars.append(var)  # Store StringVar in list
           entry = tk.Entry(self, textvariable=var, width=wd)
           entry.bind('<FocusOut>', self.printlatex)
           entry.grid(row=i, column=1, sticky='w', pady=5, padx=5)
           self.entries.append(entry)  # Store Entry widget


      self.var5a = tk.IntVar(value=2)
      self.var5b = tk.IntVar(value=5)                                                      

      self.aylar = tk.Frame(self)
      self.aylar.grid(row=4,column=1, sticky = 'w', pady = 5,padx= 5)
      self.l5b = tk.Label(self.aylar, text = "-")                        
      self.e5a = tk.Entry(self.aylar, textvariable=self.var5a,width=5)
      self.e5b = tk.Entry(self.aylar, textvariable=self.var5b,width=5)                  

      self.e5a.grid(row = 0, column = 1, sticky = 'w')        
      self.l5b.grid(row = 0, column = 2)        
      self.e5b.grid(row = 0, column = 3)              

#      self.l5b = tk.Label(self, text = "-")                        
#      self.l5b.grid(row = 4, column = 2, pady = 5,padx= 5)      

      self.l6  = tk.Label(self, text = "Latex:")
      self.l6.grid(row = 5, column = 0, sticky = 'w', pady = 5,padx= 5)
      
      self.l7 = tk.Label(self, text = " ")          
      
      self.l7 = tk.Text(self, height=3, width=100)
      self.l7.grid(row=6, column=0, columnspan=2, sticky='w', pady=5, padx=5)
      self.l7.config(state="disabled")  # Prevent user from editing      
      
      
      self.printlatex(1)
      
      
    def printlatex(self,event):
         latex0 = ""
         for var in self.vars:
             latex0 = latex0 + f"{var.get()}" + " & "
         for i in range(1,37):
             ek = " & " if i<36 else r" \\ \hline"
#             if (i> self.var5a.get()-1) and (i<self.var5b.get()+1):
#              latex0 = latex0 + "x" + ek     
#             else:
#              latex0 = latex0 + ek           
             latex0 = latex0 + str(i) + ek

         self.l7.config(state="normal")  # Enable editing
         self.l7.delete("1.0", tk.END)  # Clear old text
         self.l7.insert("1.0", latex0)  # Insert new text
         self.l7.config(state="disabled")  # Disable editing again
             
#         self.l7.config(text=latex0)
      
      
if __name__ == "__main__":
    app = İsplani()
    app.mainloop()
