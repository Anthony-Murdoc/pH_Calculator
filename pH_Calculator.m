% Acid Ionization constant
Ka = 10^-4;
% Initial concentrations/coefficients use (aA -> cC +dD) format, "bB' is water
% The capitals are concentrations, lowercase is coefficient 
a = 1;

A = .05;

c = 1;

C = 0;

d = 1;

D = 0;
% C HAS TO BE THE H30+ concentration
syms X

% Equillibrium concentrations

if (((C^c * D^d)/(A^a)) > Ka)
      
    Ae = (A+(a*X));

    Ce = (C-(c*X));

    De = (D-(d*X));
end

if  (((C^c * D^d)/(A^a)) < Ka)
   
    Ae = (A-(a*X));

    Ce = (C+(c*X));

    De = (D+(d*X));
end
% Plugging and solving for the equillibrium expression

EQ = (Ka)*(Ae^a) == Ce^c * De^d;

change = vpasolve(EQ, X);

%Calculating pH based on whether the reaction was forward favored or
%backwards favored

if (((C^c * D^d)/(A^a)) > Ka)
    pH = -log10(C-(c*change));
end

if  (((C^c * D^d)/(A^a)) < Ka)
    pH = -log10(C + (c*change));
end



 