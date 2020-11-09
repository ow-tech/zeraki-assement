package com.aw_tech;

public class Main {
    public static void main(String[] args) {
	int k[] = {1,4,3,5};
	int n = k.length;
	int summationWithMissingNumber = (n+1)*(n+1)/2;
	int sumOfK = 0;
	for(int i=0; i<=n; i++){
	    sumOfK = sumOfK + i;
    }
	int missingNumber = summationWithMissingNumber - sumOfK;
        System.out.println(missingNumber);
    }
}