open Types

(* Use this grammar record as a blueprint for the exercises. *)
let todo : grammar =
  {
    symbols = [ S ];
    terminals = [ '0'; '1' ];
    productions =
      [              (* Indexes *)
        S --> "0S0"; (* 0 *)
        S --> "1S1"; (* 1 *)
        S --> "";    (* 2 *)
      ];
    start = S;
  }


(* #### Exercise 1, easy (zero_n_one_n) *)
  let zero_n_one_n : grammar = 
    {
      symbols = [ S ];
      terminals = [ '0'; '1' ];
      productions =
        [             (* Indexes*)
          S --> "0S1";
          S --> "";    (* 2 *)
        ];
      start = S;
    }


(* #### Exercise 2, easy (palindromes) *)
let palindromes : grammar = 
  {
    symbols = [ S ];
    terminals = [ '0'; '1' ];
    productions =
      [              (* Indexes *)
        S --> "0S0"; (* 0 *)
        S --> "1S1"; (* 1 *)
        S --> "0";   (* 3 *)
        S --> "1";   (* 4 *)
        S --> "";    (* 5 *)
      ];
    start = S;
  }


(* #### Exercise 3, medium (balanced_parentheses) *)
let balanced_parentheses : grammar = 
  {
    symbols = [ S ; A ];
    terminals = [ '{'; '}'; '('; ')'; '['; ']'];
    productions =
      [              (* Indexes *)
        S --> "A";    (* 0 *)
        A --> "(A)A"; (* 1 *)
        A --> "{A}A"; (* 2 *)
        A --> "[A]A"; (* 3 *)
        A --> "";     (* 4 *)
        A --> "()";
        A --> "[]";
        A --> "{}";
      ];
    start = S;
  }



(* #### Exercise 4, hard (same_amount)

   Hint: model the language of words where the number of 0's is
   one greater than the number of 1's and viceversa, then combine them.
*)
let same_amount : grammar = 
  {
    symbols = [ S ; A ; B ];
    terminals = [ '0'; '1' ];
    productions =
      [              (* Indexes *)
        S --> "AB";    (* 0 *)
        S --> "BA";    (* 1 *)
        B --> "ABB";   (* 2 *)
        B --> "BAB";   (* 3 *)
        B --> "BBA";   (* 4 *)

        A --> "BAA";   (* 5 *)
        A --> "ABA";   (* 6 *)
        A --> "AAB";   (* 7 *)
       
        A --> "0";     (* 8 *)
        B --> "1";     (* 9 *)
      ];
    start = S;
  }
