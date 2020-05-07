# ShERML
## ShERML: Mapping Relational Data to RDF
ShERML, a tool for facilitating the data exchange from relational data to RDF. This tool allows to design a relational-to-RDF mapping by drawing arrows between schematic representations of the relational schema on the one hand, and a SHACL or ShEx schema on the other hand.
# Installation #
1. Check your computer has java installed
2. Ensure you are connected to the internet since many javascript files used in our tool are stored in the internet
3. Ensure the port 8080 is not blocked by other program
4. Download the jar file ```rel2shape.jar``` from the release folder 
5. Open a terminal  and go to the same directory of the jar file (```$cd path```)
6. Run the command 
```$java -jar rel2shape.jar```
7. Open a browser and type
```localhost:8080/```

# Instructions #
The tool was tested with Chrome and Firefox browser.
1. Load a relational database. For instance the supplier.sql in folder data.
2. Load the ShEx schema. For instance the supplier.json in folder data.
3. Define mappings by connecting circular anchors from tables to shapes and attributes to properties.
4. Materialize the RDF
5. Export as SQL and R2RML

# Demo #
<a href="http://www.youtube.com/watch?feature=player_embedded&v=6llcKyTgEpw
" target="_blank"><img src="http://img.youtube.com/vi/6llcKyTgEpw/0.jpg" 
alt="ShERML Editor" width="240" height="180" border="10" /></a>

## Built With
* [Spring](https://spring.io/) - The web framework used
* [Gradle](https://gradle.org/) - Built Management
* [Eclipse](https://www.eclipse.org/) - Platform for compiling project

# Authors #
* **Jose Lozano** - *Initial work*

## License
This project is licensed under the MIT License

## Acknowledgments
* Thanks to the designing ideas of **Slawek Staworko** 
