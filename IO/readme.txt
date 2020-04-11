--------------------------------------------
 IO (Java) v0.9l
 PUC-Minas 
 Instituto de Ci�ncias Exatas e Inform�tica
 31/07/2018
--------------------------------------------

Para instalar:

1.) Copiar o arquivo IO.jar para a pasta
    
    JAVAHOME\

    Dica (1.A): 
    JAVAHOME � a refer�ncia b�sica para a pasta 
    onde o pacote JDK foi instalado. 
    JAVAHOME tamb�m � nome de uma vari�vel de ambiente que no 
    Windows poder� ser acessada da seguinte forma: 

    Meu Computador\Propriedades\Avan�ado\Vari�veis de Ambiente\Vari�veis de Sistema

    Dica (1.B): 
    Outros exemplos de JAVAHOME:

    No Windows:

    C:\Java
    C:\Program Files\Java
    C:\Program Files\Java\jdk
    C:\Arquivos de Programas\Java
    C:\Arquivos de Programas\Java\jdk

2.) Compilar e executar os arquivos Teste_IO1.java e Teste_IO2.java 
    para testar a instala��o da classe IO:
  
    No Windows:

    javac -cp C:/Java/IO.jar;./  Teste_IO1.java  
    javac -cp JAVAHOME/IO.jar;./ Teste_IO2.java

    OBS.:
    Recomend�vel usar a primeira forma.

    No Linux:

    javac -cp /opt/Java/IO.jar;./ Teste_IO1.java  
    javac -cp JAVAHOME/IO.jar;./  Teste_IO2.java

    OBS.:
    Recomend�vel usar a primeira forma,
    bem como a cria��o da pasta /opt/Java.
    
3.) Copiar as pastas com a documenta��o e os testes para 
    JAVAHOME\docs.

4.) Provid�ncias a serem tomadas em caso de erro 
    com a localiza��o da classe IO:

    4.1.) Localizar a instala��o atual do ambiente Java (jre) ativo
          (poder� existir mais de um, por exemplo, jre7)

    4.2.) Criar uma vari�vel de ambiente:

	  CLASSPATH com o valor igual a

          JAVAHOME/IO.jar;./

	  Dica (4.2.A): 
          No Windows, as vari�veis de ambiente podem ser acessadas
          a partir do seguinte caminho: 

          Meu Computador\Propriedades\Avan�ado\Vari�veis de Ambiente\Vari�veis de Sistema

    4.3.) Localizar a vari�vel de ambiente PATH e 
          concatenar � essa vari�vel:   

          JAVAHOME;./

	  Dica (4.3.A): 
          Concatenar significa manter o valor atual e 
          adicionar por justaposi��o o novo valor
          (colocar no final).

          Dica (4.3.B): 
          No Windows, as vari�veis de ambiente podem ser acessadas
          a partir do seguinte caminho: 

          Meu Computador\Propriedades\
            Configura��es avan�adas de sistema
              Vari�veis de Ambiente\Vari�veis de Sistema

    4.4.) Se for usar o jGRASP,
          e todas as op��es acima tiverem falhado,
          acrescentar a partir de

          Settings
            PATH/CLASSPATH
              Workspace
                CLASSPATHS (aba)
                  New (bot�o)
                    Browse (at� JAVAHOME/IO.jar)
                    OK
                  Apply
                OK
