
## STAP1: Handig bij functionele interface

```Java
@FunctionalInterface
public interface Hello world {
	void greetSomeone(String someone) {
		System.out.println(someone)
	}
}
```

## STAP2: Annonieme klasse

```Java
public class EnglishGreeting_v3 {
	public void speakEnglish() {
		HelloWorld englishGreeting= new HelloWorld() { //annonieme innerklasse
			@Override
			public interface Hello world {
				void greetSomeone(String someone) {
					System.out.println(someone)
				}
			}
		}
	}
}
```


## STAP3: Lambda Expressie

```java

public class EnglishGreeting_v3 {
	public void speakEnglish() {
		HelloWorld englishGreeting =
			someone -> System.out.println("Hello_v4" + someone) 
			englishGreeting.greetSomeone("world4");
		}
	}
}
```


## STAP3b: Doorverwijzen

