java -cp hsqldb-2.2.7.jar -jar sqltool.jar --inlineRC=URL=jdbc:hsqldb:hsql://localhost/SampleDB,User=SAMPLE --sql "shutdown;"
java -cp hsqldb-2.2.7.jar -jar sqltool.jar --inlineRC=URL=jdbc:hsqldb:hsql://localhost/ArtRepository,User=ART --sql "shutdown;"
