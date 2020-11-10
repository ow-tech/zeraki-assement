package com.aw_tech;

public class Main {

    public static void main(String[] args) {
	String S = "lorematqpsu";
	int n = S.length();
	int k = 4;
	char[] stringArray = S.toCharArray();
        for (int i = 0; i < n; i+=k){
            int left = i;
            int right = Math.min(i + k -1, n-1);
            char reversedString;
            while (left < right){
                reversedString = stringArray[left];
                stringArray[left] = stringArray[right];
                stringArray[right] = reversedString;
                left +=1;
                right -=1;
            }

        }
        for (int i = 0; i < n; i++)
            System.out.print(stringArray[i] + " ");

    }
    }