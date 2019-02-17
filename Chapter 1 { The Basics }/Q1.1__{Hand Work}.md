## Which of the following are valid Prolog atoms?

* **f**   
    This is a valid prolog atom.
  
* **loves(john, mary)**   
    This is not a Prolog atom, since it is a compound term,
    because it is made of combination of different terms.

* **Mary**    
    This is not a Prolog atom since, it is a Prolog variable,
    because it starts with a capital letter.

* **\_c1**    
    This is not a Prolog atom since, this type of names are
    reserved in Prolog for variables.

* **'Hello'**   
    This is valid Prolog atom, Since it is a string.

* **this_is_it**    
    This is a valid Prolog atom.

##
##
## Which of the following are valid names for Prolog variables?
* **a**   
    This is a not a valid name for Prolog variable since it do not starts with a capital letter or \_.
  
* **A**   
    This is a valid name for Prolog variable.

* **Paul**    
    This is a valid name for Prolog variable.

* **'Hello'**    
    This is a not a valid name for Prolog variable since it is a string.

* **a_123**   
    This is a not a valid name for Prolog variable since it do not starts with a capital letter or \_.

* **\_**    
    This is an anonymous variable in Prolog.

* **\_abc**    
    This is also an anonymous variable but this is a valid name.

* **x2**    
    This is a not a valid name for Prolog variable since it do not starts with a capital letter or \_.

##
##
## What would a Prolog interpreter reply given the following query?
#### <code>?- f(a, b) = f(X, Y).</code>

The query will give following output.
#### <code>X = a,</code><br/><code>Y = b.</code><br/>


##
##
## Would the following query succeed?
#### <code>?- loves(mary, john) = loves(John, Mary).</code>

Yes, This query produces following output.
#### <code>John = mary,</code><br/><code>Mary = john.</code><br/>
This output is produced depending upon the position of varialbes,
since both the predicates are matched and the corresponding value is assigned to the variable.

##
##
## Assume a program consisting only of the fact
#### <code>a(B, B).</code>
## has been consulted by Prolog. How will the system react to the following query?
#### <code>?- a(1, X), a(X, Y), a(Y, Z), a(Z, 100).</code>

The Query will not execute.

If we take a look at the predicate.
<code>a(B, B).</code>
This will only suceed if and only if both the values given to it are same.
such that, <code>a(1, 1)</code> or <code>a(1234322354, 1234322354)</code>
  
Now lets take a look at the given query. The Query has 4 parts.

##### Part 1 <code>a(1, X)</code>
since, a can have same arguments. So, X will be assigned 1. (because X was uninstanstiated).

##### Part 2 <code>a(X, Y)</code>
as we have seen that X has already been instastiated with a value, Now X will be replaced with its value i.e. 1
So the query becomes a(1, Y). We have got the same case as previous one. Since Y is un instanstiated So, same work will be done.

##### Part 3 <code>a(Y, Z)</code>
Y is instanstiated and Z is not same as the previous case, Z will be instanstiated with value of Y.

##### Part 4 <code>a(Z, 100)</code>
since Z has a value 1, it will be replaced with its value So, the query becomes,
<code>a(1, 100)</code>
predicate **a** can only accept same arguments so, in this case the condition is violated hence, this query won't succeed.