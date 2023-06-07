public  class Loops_Assignment {
    public Integer whileLoopMethod(integer n) {
        Integer i=1;
        while (i<=n) {
            System.debug(i);
            i++;
            
        }
        return n;
    }
    public void printEven (Integer startNum, Integer endNum){
        for(Integer i=startNum;i<endNum;i++){
            Integer remainder= math.mod(i, 2);
            if( remainder==0){
                system.debug(i);
            }
        }
    }
    public void printPower (Integer n){
        double myPower=math.pow(n,n);
        String nString= String.valueOf(n);
        for (Integer i=1; i<n; i++){
            nString += '*'+ n;

        }
        String result= nString+ ' = '+myPower;
        System.debug(result);
    }
}