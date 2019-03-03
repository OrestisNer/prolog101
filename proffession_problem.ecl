%Smith, Baker, Carpenter and Tailor have each a different profession (smith, baker, carpenter,
%tailor) but not showed by their names, i.e. the Smith is not a smith, etc. Each of them has a son. But
%the sons do not have the profession showed by their name, either.
%If you know that:
%1) no son has the same profession as his father has
%2) the Baker has the same profession as the Carpenter's son has
%3) Smith's son is a baker.
%find the professions of the parents and sons. Write a prolog predicate professions/8 that finds the
%professions of the different people mentioned above



%profession/8
profession(Smith,Baker,Carpenter,Tailor,Smith_Son,Baker_Son,Carpenter_Son,Tailor_Son):-
