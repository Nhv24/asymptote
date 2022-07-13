struct poly
{
	real[] coeff;
    int length;
    
    void operator init(... real[] coeff)
    {
    	this.coeff = coeff;
        this.length = coeff.length;
    }
    
    string _str(real s)
    {
    	if (s < 0)
        {
        	return "(" + string(s) + ")";
        }
        return string(s);
    }
    
    string getstr()
    {
    	string res = "";

        for (int n = 0; n < this.coeff.length; ++n)
        {
        	if (this.coeff[n] != 0)
            {
            	if (this.coeff.length - n - 1 == 0)
                {
                	res += this._str(this.coeff[n]);
                }
                else if (this.coeff.length - n - 1 == 1)
                {
                	res += this._str(this.coeff[n]) + "x";
                }
                else
                {
            		res += this._str(this.coeff[n]) + "x^" + "{" + string(this.coeff.length - n - 1) + "}";
                }
            }
            else
            {
            	res = reverse(substr(reverse(res), 1));
            }

            if (n != this.coeff.length - 1)
            {
            	res += "+";
            }
        }
        return "$" + res + "$";
    }
}

poly operator + (poly first, poly sec)
{
    real[] newpoly;
    
    real[] left;
    
    real[] a, b;
    
    if (first.length > sec.length)
    {
    	left = first.coeff[:first.length - sec.length];
        a = first.coeff[first.length - sec.length:];
        b = sec.coeff;
    }
    else if (first.length < sec.length)
    {
		left = sec.coeff[:sec.length - first.length];
        a = sec.coeff[sec.length - first.length:];
        b = first.coeff;
	}
    else
    {
    	a = first.coeff;
        b = sec.coeff;
    }
    newpoly.append(left);
    
    for (int n = 0; n < a.length; ++n)
    {
    	newpoly.push(a[n] + b[n]);
    }
    
    return poly(... newpoly);
}

real negate(real x) {return -x;}

poly operator - (poly first, poly sec)
{
    return first + poly(... map(negate, sec.coeff));
}

poly operator * (poly first, poly sec)
{
	real[] coeff;
	for (int x = 0; x < first.length; ++x)
    {
    	for (int y = 0; y < sec.length; ++y)
        {
        	coeff.push(first.coeff[x] * sec.coeff[y]);
        }
    }
    
    return poly(... coeff);
}
