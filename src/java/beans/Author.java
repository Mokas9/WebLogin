
package beans;

public class Author {
    public Author(){}
    
    private String name;
    
    public Author(String name){
        this.name = name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getName(){
        return name;
    }
}
