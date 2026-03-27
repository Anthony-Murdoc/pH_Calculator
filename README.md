Overview


This is a MATLAB based project where I created a tool to calculate the pH of aqueous solutions Involving acids and bases

Right now, It currently supports
Strong acids and Strong bases
Weak acids and Weak bases\
Equillibrium based pH concentrations
Autoionization of water pH corrections
Percent dissociation


How this ties into Chemical Engineering.

Firstly, Equilibrium chemistry

This models the system aA  ⇌ cC + dD
where 
A is the reactant concentration (Acid or base)
C is the hydronium ion (H30+) or hydroxide (OH-) concentration
D is conjugate species (A- or BH+)
a, b, c, are the stoichiometric coefficients.
where K = (C^c * D^d)/(A^a)

Secondly, Acid - Base relationships

Ka, The acid Ionization constant
Kb, The base Ionization constant
Kw, The Water autoIonization constant

Thirdly, Strong VS weak species

Strong acid/Strong bases fully dissociate

Weak acids/Weak bases partially dissociate

Lastly, pH calculations

Strong acids, -log10(concentration of acid)
Strong bases, 14 - -log10(concentration of base)
Weak species, solved using the equilibrium expression and symbolic solving using vpasolve


What the code does step by step

Defines constants Ka, Kb, and Kw
Determines system type (Strong acids, weak bases etc)
Handles missing information ( Calculating Ka or Kb using Kw)
Sets up equillibrium expression for X modelling change in concentration (if weak acid)
Solves equillibrium system using vpa solve to find change in concentration
Calculates pH based on final hydronium concentration.
Applies corrections if needed (Autoionization of water)
Calculates percent dissociation of weak acids and weak bases (strong is already 100%)


How to use

1. Set constants:
Kw = 10^-14;
Ka = 10^-4;
Kb = 0; % set to 0 if unknown
2. Define reaction:
a = 1;
A = initial concentration of acid/base

c = 1;
C = initial H3O+ or OH- concentration

d = 1;
D = product concentration
Note:
C must always represent H₃O⁺ concentration

Output

pH
corrected pH if needed
Percent dissociation


Future improvements

Add support for
Polyprotic acids
Buffer systems
Temperature dependence

Convert it into a function for multi project use

Adding plot


Why this project matters

Application of Chemical equillibrium principles
Use of numerical and symbolic methods
Translation of Chemical engineering theory into computational tools.
