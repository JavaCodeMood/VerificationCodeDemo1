package com.lhf.check;


public class Check_Code {

    private String checknum = "";  //���ɵ���֤��
    private String checknums = "";
    private int number = 4;       //�û������λ��

    public void makeChecknum() {
     
        String[] sourcenum = new String[]{"��","��","��","��","��","��","��","��","��","��"};
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
