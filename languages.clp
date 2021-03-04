;; Import classes
(import javax.swing.*)
(import java.awt.*)

;; Don't clear defglobals on (reset)
(set-reset-globals FALSE)

(defglobal ?*crlf* = "
")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Question and Answer template

(deftemplate question
  (slot text)
  (slot type)
  (multislot valid)
  (slot ident))

(deftemplate answer
  (slot ident)
  (slot text))

(do-backward-chaining answer)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Answer Module

(defmodule app-rules)

(defrule app-rules::supply-answers
  (declare (auto-focus TRUE))
  (MAIN::need-answer (ident ?id))
  (not (MAIN::answer (ident ?id)))
  (not (MAIN::ask ?))
  =>
  (assert (MAIN::ask ?id))
  (return))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Rules

(defrule MAIN::r1
  (declare (auto-focus TRUE))
  (answer (ident why) (text for_my_kids))
  =>
  (recommend-action "Python, It is Widely regarded as the best programming language for beginners and Easiest to learn")
  (halt))

(defrule MAIN::r2
  (declare (auto-focus TRUE))
  (answer (ident why) (text i_dont_know))
  =>
  (recommend-action "Python, It is Widely regarded as the best programming language for beginners and Easiest to learn")
  (halt))

(defrule MAIN::r3
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text doesn_t_matter))
  =>
  (recommend-action "Java, because it is One of the most in demand & highest paying programming languages, Slogan: write once, work everywhere")
  (halt))

(defrule MAIN::r4
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text gaming))
  =>
  (recommend-action "C++, It is a Complex version of C with a lot more features, and Recommended only if you have a mentor to guide you")
  (halt))

(defrule MAIN::r5
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text mobile))
  (answer (ident which_mobile_os) (text ios))
  =>
  (recommend-action "Objective-C, It is the Primary language used by Apple for MacOSX & iOS, and Choose this if you want to focus on developing iOS or OSX apps only")
  (halt))

(defrule MAIN::r6
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text mobile))
  (answer (ident which_mobile_os) (text android))
  =>
  (recommend-action "Java, because it is One of the most in demand & highest paying programming languages, Slogan: write once, work everywhere")
  (halt))

(defrule MAIN::r7
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text facebook))
  =>
  (recommend-action "Python, It is Widely regarded as the best programming language for beginners and Easiest to learn")
  (halt))

(defrule MAIN::r8
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text google))
  =>
  (recommend-action "Python, It is Widely regarded as the best programming language for beginners and Easiest to learn")
  (halt))

(defrule MAIN::r9
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text microsoft))
  =>
  (recommend-action "C#, A popular choice for enterprise to create websites and Windows application using .NET framework, and Similar to Java in basic syntax and some features")
  (halt))

(defrule MAIN::r10
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text apple))
  =>
  (recommend-action "Objective-C, It is the Primary language used by Apple for MacOSX & iOS, and Choose this if you want to focus on developing iOS or OSX apps only")
  (halt))

(defrule MAIN::r11
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text web))
  (answer (ident web) (text front_end))
  =>
  (recommend-action "JavaScript, Most popular clients-side web scripting language and the must learn for front-end web developer (HTML and CSS as well)")
  (halt))

(defrule MAIN::r12
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text web))
  (answer (ident web) (text back_end))
  (answer (ident want_to_work_for) (text corporate))
  (answer (ident think_about_microsoft) (text im_a_fan))
  =>
  (recommend-action "C#, A popular choice for enterprise to create websites and Windows application using .NET framework, and Similar to Java in basic syntax and some features")
  (halt))

(defrule MAIN::r13
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text web))
  (answer (ident web) (text back_end))
  (answer (ident want_to_work_for) (text corporate))
  (answer (ident think_about_microsoft) (text not_bad))
  =>
  (recommend-action "Java, because it is One of the most in demand & highest paying programming languages, Slogan: write once, work everywhere")
  (halt))

(defrule MAIN::r14
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text web))
  (answer (ident web) (text back_end))
  (answer (ident want_to_work_for) (text corporate))
  (answer (ident think_about_microsoft) (text suck))
  =>
  (recommend-action "Java, because it is One of the most in demand & highest paying programming languages, Slogan: write once, work everywhere")
  (halt))

(defrule MAIN::r15
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text web))
  (answer (ident web) (text back_end))
  (answer (ident want_to_work_for) (text startup))
  (answer (ident try_something_new) (text yes))
  =>
  (recommend-action "JavaScript, Most popular clients-side web scripting language and the must learn for front-end web developer (HTML and CSS as well)")
  (halt))

(defrule MAIN::r16
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text web))
  (answer (ident web) (text back_end))
  (answer (ident want_to_work_for) (text startup))
  (answer (ident try_something_new) (text no))
  (answer (ident favourite_toy) (text lego))
  =>
  (recommend-action "Python, It is Widely regarded as the best programming language for beginners and Easiest to learn")
  (halt))

(defrule MAIN::r17
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text web))
  (answer (ident web) (text back_end))
  (answer (ident want_to_work_for) (text startup))
  (answer (ident try_something_new) (text no))
  (answer (ident favourite_toy) (text play_doh))
  =>
  (recommend-action "Ruby, Mostly known for its popular web framework, Ruby on Rails, and It focuses on getting things done")
  (halt))

(defrule MAIN::r18
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text web))
  (answer (ident web) (text back_end))
  (answer (ident want_to_work_for) (text startup))
  (answer (ident try_something_new) (text no))
  (answer (ident favourite_toy) (text old_ugly))
  =>
  (recommend-action "PHP, Suitable for building small and simple sites within a short time frame, and Supported by almost every web hosting services with lower price")
  (halt))

(defrule MAIN::r19
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text enterprise))
  (answer (ident think_about_microsoft) (text im_a_fan))
  =>
  (recommend-action "C#, A popular choice for enterprise to create websites and Windows application using .NET framework, and Similar to Java in basic syntax and some features")
  (halt))

(defrule MAIN::r20
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text enterprise))
  (answer (ident think_about_microsoft) (text not_bad))
  =>
  (recommend-action "Java, because it is One of the most in demand & highest paying programming languages, Slogan: write once, work everywhere")
  (halt))

(defrule MAIN::r21
  (declare (auto-focus TRUE))
  (answer (ident why) (text make_money))
  (answer (ident which_platform) (text enterprise))
  (answer (ident think_about_microsoft) (text suck))
  =>
  (recommend-action "Java, because it is One of the most in demand & highest paying programming languages, Slogan: write once, work everywhere")
  (halt))

(defrule MAIN::r22
  (declare (auto-focus TRUE))
  (answer (ident why) (text for_fun))
  (answer (ident prefer_to_learn) (text easy_way))
  =>
  (recommend-action "Python, It is Widely regarded as the best programming language for beginners and Easiest to learn")
  (halt))

(defrule MAIN::r23
  (declare (auto-focus TRUE))
  (answer (ident why) (text for_fun))
  (answer (ident prefer_to_learn) (text best_way))
  =>
  (recommend-action "Python, It is Widely regarded as the best programming language for beginners and Easiest to learn")
  (halt))

(defrule MAIN::r24
  (declare (auto-focus TRUE))
  (answer (ident why) (text for_fun))
  (answer (ident prefer_to_learn) (text harder_way))
  (answer (ident car) (text auto))
  =>
  (recommend-action "Java, because it is One of the most in demand & highest paying programming languages, Slogan: write once, work everywhere")
  (halt))

(defrule MAIN::r25
  (declare (auto-focus TRUE))
  (answer (ident why) (text for_fun))
  (answer (ident prefer_to_learn) (text harder_way))
  (answer (ident car) (text manual))
  =>
  (recommend-action "C, Lingua franca of programming language, and One of the oldest and most widely used language in the world")
  (halt))

(defrule MAIN::r26
  (declare (auto-focus TRUE))
  (answer (ident why) (text for_fun))
  (answer (ident prefer_to_learn) (text hardest_way))
  =>
  (recommend-action "C++, It is a Complex version of C with a lot more features, and Recommended only if you have a mentor to guide you")
  (halt))

(defrule MAIN::r27
  (declare (auto-focus TRUE))
  (answer (ident why) (text im_interested))
  (answer (ident prefer_to_learn) (text easy_way))
  =>
  (recommend-action "Python, It is Widely regarded as the best programming language for beginners and Easiest to learn")
  (halt))

(defrule MAIN::r28
  (declare (auto-focus TRUE))
  (answer (ident why) (text im_interested))
  (answer (ident prefer_to_learn) (text best_way))
  =>
  (recommend-action "Python, It is Widely regarded as the best programming language for beginners and Easiest to learn")
  (halt))

(defrule MAIN::r29
  (declare (auto-focus TRUE))
  (answer (ident why) (text im_interested))
  (answer (ident prefer_to_learn) (text harder_way))
  (answer (ident car) (text auto))
  =>
  (recommend-action "Java, because it is One of the most in demand & highest paying programming languages, Slogan: write once, work everywhere")
  (halt))

(defrule MAIN::r30
  (declare (auto-focus TRUE))
  (answer (ident why) (text im_interested))
  (answer (ident prefer_to_learn) (text harder_way))
  (answer (ident car) (text manual))
  =>
  (recommend-action "c")
  (halt))

(defrule MAIN::r31
  (declare (auto-focus TRUE))
  (answer (ident why) (text im_interested))
  (answer (ident prefer_to_learn) (text hardest_way))
  =>
  (recommend-action "C++, It is a Complex version of C with a lot more features, and Recommended only if you have a mentor to guide you")
  (halt))

(defrule MAIN::r32
  (declare (auto-focus TRUE))
  (answer (ident why) (text improve_myself))
  (answer (ident prefer_to_learn) (text easy_way))
  =>
  (recommend-action "Python, It is Widely regarded as the best programming language for beginners and Easiest to learn")
  (halt))

(defrule MAIN::r33
  (declare (auto-focus TRUE))
  (answer (ident why) (text improve_myself))
  (answer (ident prefer_to_learn) (text best_way))
  =>
  (recommend-action "Python, It is Widely regarded as the best programming language for beginners and Easiest to learn")
  (halt))

(defrule MAIN::r34
  (declare (auto-focus TRUE))
  (answer (ident why) (text improve_myself))
  (answer (ident prefer_to_learn) (text harder_way))
  (answer (ident car) (text auto))
  =>
  (recommend-action "Java, because it is One of the most in demand & highest paying programming languages, Slogan: write once, work everywhere")
  (halt))

(defrule MAIN::r35
  (declare (auto-focus TRUE))
  (answer (ident why) (text improve_myself))
  (answer (ident prefer_to_learn) (text harder_way))
  (answer (ident car) (text manual))
  =>
  (recommend-action "c")
  (halt))

(defrule MAIN::r36
  (declare (auto-focus TRUE))
  (answer (ident why) (text improve_myself))
  (answer (ident prefer_to_learn) (text hardest_way))
  =>
  (recommend-action "C++, It is a Complex version of C with a lot more features, and Recommended only if you have a mentor to guide you")
  (halt))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Results 

(deffunction recommend-action (?action)
  "Give final instructions to the user"
  (call JOptionPane showMessageDialog ?*frame*
        (str-cat "I recommend that you should start learning " ?action)
        "Recommendation"
        (get-member JOptionPane INFORMATION_MESSAGE)))
  
(defadvice before halt (?*qfield* setText "Close Window to Exit"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Module Ask

(defmodule ask)

(deffunction ask-user (?question ?type ?valid)
  "Set up the GUI to ask a question"
  (?*qfield* setText ?question)
  (?*apanel* removeAll)
  (if (eq ?type multi) then
    (?*apanel* add ?*acombo*)
    (?*apanel* add ?*acombo-ok*)
    (?*acombo* removeAllItems)
    (foreach ?item ?valid
             (?*acombo* addItem ?item))
    else
    (?*apanel* add ?*afield*)
    (?*apanel* add ?*afield-ok*)
    (?*afield* setText ""))
  (?*apanel* validate)
  (?*apanel* repaint))

(deffunction is-of-type (?answer ?type ?valid)
  "Check that the answer has the right form"
  (if (eq ?type multi) then
    (foreach ?item ?valid
             (if (eq (sym-cat ?answer) (sym-cat ?item)) then
               (return TRUE)))
    (return FALSE))
    
  ;; plain text
  (return (> (str-length ?answer) 0)))

(defrule ask::ask-question-by-id
  "Given the identifier of a question, ask it"
  (declare (auto-focus TRUE))
  (MAIN::question (ident ?id) (text ?text) (valid $?valid) (type ?type))
  (not (MAIN::answer (ident ?id)))
  (MAIN::ask ?id)
  =>
  (ask-user ?text ?type ?valid)
  ((engine) waitForActivations))

(defrule ask::collect-user-input
  "Check an answer returned from the GUI, and optionally return it"
  (declare (auto-focus TRUE))
  (MAIN::question (ident ?id) (text ?text) (type ?type) (valid $?valid))
  (not (MAIN::answer (ident ?id)))
  ?user <- (user-input ?input)
  ?ask <- (MAIN::ask ?id)
  =>
  (if (is-of-type ?input ?type ?valid) then
    (retract ?ask ?user)
    (assert (MAIN::answer (ident ?id) (text ?input)))
    (return)
    else
    (retract ?ask ?user)
    (assert (MAIN::ask ?id))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Main Frame
(defglobal ?*frame* = (new JFrame "Which programming Language you should learn first?"))
(?*frame* setDefaultCloseOperation (get-member JFrame EXIT_ON_CLOSE))
(?*frame* setSize 500 250)
(?*frame* setVisible TRUE)
(?*frame* setResizable FALSE)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Question Field
(defglobal ?*qfield* = (new JTextArea 5 40))
(bind ?scroll (new JScrollPane ?*qfield*))
((?*frame* getContentPane) add ?scroll)
(?*qfield* setText "Please wait...")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Answer Field
(defglobal ?*apanel* = (new JPanel))
(defglobal ?*afield* = (new JTextField 40))
(defglobal ?*afield-ok* = (new JButton OK))

(defglobal ?*acombo* = (new JComboBox (create$ "yes" "no")))
(defglobal ?*acombo-ok* = (new JButton OK))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(?*apanel* add ?*afield*)
(?*apanel* add ?*afield-ok*)
((?*frame* getContentPane) add ?*apanel* (get-member BorderLayout SOUTH))
(?*frame* validate)
(?*frame* repaint)

(deffunction read-input (?EVENT)
  "An event handler for the user input field"
  (assert (ask::user-input (sym-cat (?*afield* getText)))))

(bind ?handler (new jess.awt.ActionListener read-input (engine)))
(?*afield* addActionListener ?handler)
(?*afield-ok* addActionListener ?handler)

(deffunction combo-input (?EVENT)
  "An event handler for the combo box"
  (assert (ask::user-input (sym-cat (?*acombo* getSelectedItem)))))

(bind ?handler (new jess.awt.ActionListener combo-input (engine)))
(?*acombo-ok* addActionListener ?handler)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Knowledge Base
(deffacts MAIN::question-data
  (question (ident why) (type multi) (valid for_my_kids i_dont_know make_money just_for_fun im_interested improve_myself)
            (text "Why do you want to learn programming?"))
  (question (ident which_platform) (type multi) (valid doesn_t_matter gaming mobile facebook google microsoft apple web enterprise)
            (text "Which platform/field?"))
  (question (ident which_mobile_os) (type multi) (valid ios android)
            (text "Which OS?"))
  (question (ident web) (type multi) (valid front_end back_end)
            (text "Which end?"))
  (question (ident want_to_work_for) (type multi) (valid startup corporate)
            (text "I want to work for..."))
  (question (ident think_about_microsoft) (type multi) (valid im_a_fan not_bad suck)
            (text "What do you think about Microsoft?"))
  (question (ident try_something_new) (type multi) (valid yes no)
            (text "Do you want to try something new, with huge potential, but less mature?"))
  (question (ident favourite_toy) (type multi) (valid lego play_doh old_ugly)
            (text "Which one is your favourite toy?"))
  (question (ident prefer_to_learn) (type multi) (valid easy_way best_way harder_way hardest_way)
            (text "I prefer to learn things..."))
  (question (ident car) (type multi) (valid auto manual)
            (text "Auto or Manual car?"))
  (ask why))
  
(reset)
(run-until-halt)
