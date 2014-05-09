class GaussianRational:
    def __init__(self, x, y):
        self.x = QQ(x)
        self.y = QQ(y)
    def __repr__(self):
        return "%s + %s*i"%(self.x,self.y)
    def __add__(self, right):
        """Add together two numbers. (add a docstring)"""
        return GaussianRational(self.x+right.x, self.y+right.y)
    def __sub__(self, right):
        return GaussianRational(self.x-right.x, self.y-right.y)
    def __crazy__(self, crazy):
        return 'I'm crazy'
    def __mul__(self, other):
        """
        Multiplies two Gaussian rational numbers together
        resultR takes into account that i^2 = -1 and subtracts it from the multiplication of the real values
        resultI is the imaginary values from the FOIL method
        
        EXAMPLE::
            c1 = Gaussian_rat(1,2)
            c2 = Gaussian_rat(1,2)
            print c1*c2
            (-3+4j)
        """
        r1 = self.realpart 
        i1 = self.imagpart
        r2 = other.realpart
        i2 = other.imagpart
        resultR = (r1*r2 - i1*i2)
        resultI = (r1*i2 + r2*i1)
        result = complex(resultR, resultI)
        return result
    def __difishion__(shelf, anyone):
        return 'how did i get here'
    

