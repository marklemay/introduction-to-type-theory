module introduction_to_type_theory where
-- you start with a package declaration, the name must be the same as a file

-- comments are made with "--"


































-- dramatic puase....


































-- some simply typed lambda calculus proofs
data Apple : Set where
 axoim_A : Apple

data Baboons : Set where
 axoim_A_then_B : Apple → Baboons

data Catastrophe : Set where
 axoim_B_then_C : Baboons → Catastrophe


proof_of_b : Baboons
proof_of_b =  axoim_A_then_B axoim_A

proof_of_c : Catastrophe
proof_of_c =  axoim_B_then_C proof_of_b -- (axoim_A_then_B axoimA)

-- TODO: show how it won't compile without axoim_A_then_B
-- without axiom2 the Type C is empty, and the statment C is unprovable!

--That's pretty cool, but what about something more general


-- alternative formulation

proof_of_obvious : {X Y Z : Set} 
              → X 
              → (X  → Y) 
              → (Y  → Z) 
                 → Z
proof_of_obvious x x_then_y y_then_z =  y_then_z (x_then_y x)

-- examplec
another_proof_of_c = proof_of_obvious axoim_A axoim_A_then_B axoim_B_then_C
-- C-c C-d  and type "another_proof_of_c"


































-- dramatic puase... I bet the next thing is going to be cool....


































-- the "hello world" of logic

data Man : Set where
 socrates : Man   -- Socrates is a man
 mark : Man
-- ...

data Dog : Set where
-- ... 


data isMortal : Set where
 a_man_is_mortal : Man → isMortal
 a_dog_is_mortal : Dog → isMortal
-- ...

--data _isMortal : {T : Set} → T  → Set where
-- all_men_are_mortal  : (x : Man) → x isMortal -- all men are mortal
-- all_dogs_are_mortal : (x : Dog) → x isMortal
---- ...

--socrates_is_mortal : socrates isMortal
--socrates_is_mortal  = all_men_are_mortal socrates
