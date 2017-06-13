package com.lhf.check;


public class Check_Code {

    private String checknum = "";  //生成的验证码
    private String checknums = "";
    private int number = 4;       //用户输入的位数

    public void makeChecknum() {
     
        String[] sourcenum = new String[]{"大","更","创","天","科","客","博","技","立","新"};
        String checknum = "";
        String checknums = "";
        int index = 0;
        int i = 0;
        while (i < number) {
            index = ((int) (Math.random() * 100)) % (sourcenum.length - 1);
            checknums += sourcenum[index];
            checknum +="<img src='images\\checkcode\\" + index + ".gif'/>";
            i++;
        }
        this.checknum = checknum;
         this.checknums = checknums;
    }

    public String getChecknum() {
        return this.checknum;
    }
    public String getChecknums() {
        return this.checknums;
    }
}
