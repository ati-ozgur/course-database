
class FloatNotExactDemo {
    public static void main(String[] args) {
        float a = 1.0f;
        
        System.out.println(a);
        System.out.println("");
        
        for(int i=0; i < 10; i++)
        {
            a = a/10;
            System.out.println(a);
        }
        System.out.println("");
        System.out.println("");
        
        for(int i=0; i < 10; i++)
        {
            a = a*10;
            System.out.println(a);
        }
        
    }
}