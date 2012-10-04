class droller:
    results = {}
    rttl = []
    dice = 0
    sides = 0
    
    def __init__(self,dice,sides):
        self.results.clear()
        while len(self.rttl)>0:
            self.rttl.pop()
        for i in range(dice,dice*sides+1):
            self.results[i]=0
        for i in range (1,dice+1):
            self.rttl.append(0)
        print self.rttl
        self.dice = dice
        self.sides = sides
        self.deeproll(1)

##    def roll(self,dice):
##        for i in range(1,dice+1):
##            self.results.append(i)
##        return self.results

    def deeproll(self,dnum):
        if dnum == self.dice:
            for i in range(1,self.sides+1):
                self.rttl[dnum-1]=i
                self.results[sum(self.rttl)]=self.results[sum(self.rttl)]+1
            return
        else:
            for i in range(1,self.sides+1):
                self.rttl[dnum-1]=i
                self.deeproll(dnum+1)
            return
