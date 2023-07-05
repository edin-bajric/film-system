-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: filmsystem
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `born` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `died` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `known_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (4,'Martin Charles Scorsese was born on November 17, 1942 in Queens, New York City, to Catherine Scorsese (née Cappa) and Charles Scorsese, who both worked in Manhattan\'s garment district, and whose families both came from Palermo, Sicily. He was raised in the neighborhood of Little Italy, which later provided the inspiration for several of his films. Scorsese earned a B.S. degree in film communications in 1964, followed by an M.A. in the same field in 1966 at New York University\'s School of Film. During this time, he made numerous prize-winning short films including The Big Shave (1967), and directed his first feature film, Who\'s That Knocking at My Door (1967).','Martin Scorsese','Producer, Director, Actor','November 17, 1942','Alive','Taxi Driver, Mean Streets, Goodfellas','Martin Charles Scorsese was born on November 17, 1942 in Queens, New York City, to Catherine Scorsese (née Cappa) and Charles Scorsese, who both worked in Manhattan\'s garment district, and whose families both came from Palermo, Sicily. He was raised in the neighborhood of Little Italy, which later provided the inspiration for several of his films. Scorsese earned a B.S. degree in film communications in 1964, followed by an M.A. in the same field in 1966 at New York University\'s School of Film. During this time, he made numerous prize-winning short films including The Big Shave (1967), and directed his first feature film, Who\'s That Knocking at My Door (1967).\n\nHe served as assistant director and an editor of the documentary Woodstock (1970) and won critical and popular acclaim for Mean Streets (1973), which first paired him with actor and frequent collaborator Robert De Niro. In 1976, Scorsese\'s Taxi Driver (1976), also starring De Niro, was awarded the Palme d\'Or at the Cannes Film Festival, and he followed that film with New York, New York (1977) and The Last Waltz (1978). Scorsese directed De Niro to an Oscar-winning performance as boxer Jake LaMotta in Raging Bull (1980), which received eight Academy Award nominations, including Best Picture and Best Director, and is hailed as one of the masterpieces of modern cinema. Scorsese went on to direct The Color of Money (1986), The Last Temptation of Christ (1988), Goodfellas (1990), Cape Fear (1991), The Age of Innocence (1993), Casino (1995) and Kundun (1997), among other films. Commissioned by the British Film Institute to celebrate the 100th anniversary of the birth of cinema, Scorsese completed the four-hour documentary, A Personal Journey with Martin Scorsese Through American Movies (1995), co-directed by Michael Henry Wilson.\n\nHis long-cherished project, Gangs of New York (2002), earned numerous critical honors, including a Golden Globe Award for Best Director; the Howard Hughes biopic The Aviator (2004) won five Academy Awards, in addition to the Golden Globe and BAFTA awards for Best Picture. Scorsese won his first Academy Award for Best Director for The Departed (2006), which was also honored with the Director\'s Guild of America, Golden Globe, New York Film Critics, National Board of Review and Critic\'s Choice awards for Best Director, in addition to four Academy Awards, including Best Picture. Scorsese\'s documentary of the Rolling Stones in concert, Shine a Light (2008), followed, with the successful thriller Shutter Island (2010) two years later. Scorsese received his seventh Academy Award nomination for Best Director, as well as a Golden Globe Award, for Hugo (2011), which went on to win five Academy Awards.\n\nScorsese also serves as executive producer on the HBO series Boardwalk Empire (2010) for which he directed the pilot episode. Scorsese\'s additional awards and honors include the Golden Lion from the Venice Film Festival (1995), the AFI Life Achievement Award (1997), the Honoree at the Film Society of Lincoln Center\'s 25th Gala Tribute (1998), the DGA Lifetime Achievement Award (2003), The Kennedy Center Honors (2007) and the HFPA Cecil B. DeMille Award (2010). Scorsese and actor Leonardo DiCaprio have worked together on five separate occasions: Gangs of New York (2002), The Aviator (2004), The Departed (2006), Shutter Island (2010) and The Wolf of Wall Street (2013).','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/martin.webp'),(5,'Best known for his cerebral, often nonlinear, storytelling, acclaimed writer-director Christopher Nolan was born on July 30, 1970, in London, England. Over the course of 15 years of filmmaking, Nolan has gone from low-budget independent films to working on some of the biggest blockbusters ever made.','Christopher Nolan','Producer, Director, Writer','July 30, 1970','Alive','Tenet, Interstellar, Inception, The Prestige','Best known for his cerebral, often nonlinear, storytelling, acclaimed writer-director Christopher Nolan was born on July 30, 1970, in London, England. Over the course of 15 years of filmmaking, Nolan has gone from low-budget independent films to working on some of the biggest blockbusters ever made.\n\nAt 7 years old, Nolan began making short movies with his father\'s Super-8 camera. While studying English Literature at University College London, he shot 16-millimeter films at U.C.L.\'s film society, where he learned the guerrilla techniques he would later use to make his first feature, Following (1998), on a budget of around $6,000. The noir thriller was recognized at a number of international film festivals prior to its theatrical release and gained Nolan enough credibility that he was able to gather substantial financing for his next film.\n\nNolan\'s second film was Memento (2000), which he directed from his own screenplay based on a short story by his brother Jonathan. Starring Guy Pearce, the film brought Nolan numerous honors, including Academy Award and Golden Globe Award nominations for Best Original Screenplay. Nolan went on to direct the critically acclaimed psychological thriller, Insomnia (2002), starring Al Pacino, Robin Williams and Hilary Swank.\n\nThe turning point in Nolan\'s career occurred when he was awarded the chance to revive the Batman franchise in 2005. In Batman Begins (2005), Nolan brought a level of gravitas back to the iconic hero, and his gritty, modern interpretation was greeted with praise from fans and critics alike. Before moving on to a Batman sequel, Nolan directed, co-wrote, and produced the mystery thriller The Prestige (2006), starring Christian Bale and Hugh Jackman as magicians whose obsessive rivalry leads to tragedy and murder.\n\nIn 2008, Nolan directed, co-wrote, and produced The Dark Knight (2008) which went on to gross more than a billion dollars at the worldwide box office. Nolan was nominated for a Directors Guild of America (D.G.A.) Award, Writers Guild of America (W.G.A.) Award and Producers Guild of America (P.G.A.) Award, and the film also received eight Academy Award nominations.\n\nIn 2010, Nolan captivated audiences with the sci-fi thriller Inception (2010), which he directed and produced from his own original screenplay. The thought-provoking drama was a worldwide blockbuster, earning more than $800,000,000 and becoming one of the most discussed and debated films of the year. Among its many honors, Inception received four Academy Awards and eight nominations, including Best Picture and Best Screenplay. Nolan was recognized by his peers with D.G.A. and P.G.A. Award nominations, as well as a W.G.A. Award for his work on the film.\n\nOne of the best-reviewed and highest-grossing movies of 2012, The Dark Knight Rises (2012) concluded Nolan\'s Batman trilogy. Due to his success rebooting the Batman character, Warner Bros. enlisted Nolan to produce their revamped Superman movie Man of Steel (2013), which opened in the summer of 2013. In 2014, Nolan directed, wrote, and produced the science-fiction epic Interstellar (2014), starring Matthew McConaughey, Anne Hathaway and Jessica Chastain. Paramount Pictures and Warner Bros. released the film on November 5, 2014, to positive reviews and strong box-office results, grossing over $670 million dollars worldwide.\n\nNolan resides in Los Angeles, California with his wife, producer Emma Thomas, and their children. Nolan and Thomas also have their own production company, Syncopy.','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/christopher-nolan.jpg'),(6,'Damien Sayre Chazelle is an American director and screenwriter. He was born in Providence, Rhode Island. His mother, Celia Sayre (Martin) Chazelle, is an American-Canadian writer and professor of history at The College of New Jersey. His father, Bernard Chazelle, is a French-American Eugene Higgins Professor of computer science at Princeton University, originally from Clamart, France. Chazelle has a sister, Anna, who is an actress and circus performer.','Damien Chazelle','Producer, Writer, Director','January 19, 1985','Alive','La La Land, Whiplash, First Man, 10 Cloverfield Lane','Damien Chazelle is an American director and screenwriter. His directorial debut was the musical Guy and Madeline on a Park Bench (2009), his breakthrough came when he wrote and directed his second feature film, Whiplash (2014), which was based on his award-winning 2013 short film of the same name. The film received five Academy Award nominations, including Best Picture and Best Adapted Screenplay for Chazelle.\n\nIn 2016 his film La La Land received critical and commercial acclaim, winning all 7 of its Golden Globe nominations, including Best Director, and Best Original Screenplay. It also received a record-tying 14 Academy Award nominations, winning six including Best Director for Chazelle who became the youngest person in history to win a Oscar for Best Director at the age of 32.\n\nChazelle also co-wrote 10 Cloverfield Lane (2016).','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/damien-chazelle.png'),(7,'David Fincher was born in 1962 in Denver, Colorado, and was raised in Marin County, California. When he was 18 years old he went to work for John Korty at Korty Films in Mill Valley. He subsequently worked at ILM (Industrial Light and Magic) from 1981-1983. Fincher left ILM to direct TV commercials and music videos after signing with N. Lee Lacy in Hollywood. He went on to found Propaganda in 1987 with fellow directors Dominic Sena, Greg Gold and Nigel Dick. Fincher has directed TV commercials for clients that include Nike, Coca-Cola, Budweiser, Heineken, Pepsi, Levi\'s, Converse, AT&T and Chanel. He has directed music videos for Madonna, Sting, The Rolling Stones, Michael Jackson, Aerosmith, George Michael, Iggy Pop, The Wallflowers, Billy Idol, Steve Winwood, The Motels and, most recently, A Perfect Circle.','David Fincher','Producer, Director, Writer','August 28, 1962','Alive','Se7en, Gone Girl, Zodiac','David Fincher was born in 1962 in Denver, Colorado, and was raised in Marin County, California. When he was 18 years old he went to work for John Korty at Korty Films in Mill Valley. He subsequently worked at ILM (Industrial Light and Magic) from 1981-1983. Fincher left ILM to direct TV commercials and music videos after signing with N. Lee Lacy in Hollywood. He went on to found Propaganda in 1987 with fellow directors Dominic Sena, Greg Gold and Nigel Dick. Fincher has directed TV commercials for clients that include Nike, Coca-Cola, Budweiser, Heineken, Pepsi, Levi\'s, Converse, AT&T and Chanel. He has directed music videos for Madonna, Sting, The Rolling Stones, Michael Jackson, Aerosmith, George Michael, Iggy Pop, The Wallflowers, Billy Idol, Steve Winwood, The Motels and, most recently, A Perfect Circle.\n\nAs a film director, he has achieved huge success with Se7en (1995), Fight Club (1999) and, Panic Room (2002).','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/David%20Fincher.jpg'),(8,'Three-time Oscar nominee Frank Darabont was born in a refugee camp in 1959 in Montbeliard, France, the son of Hungarian parents who had fled Budapest during the failed 1956 Hungarian revolution. Brought to America as an infant, he settled with his family in Los Angeles and attended Hollywood High School. His first job in movies was as a production assistant on the 1981 low-budget film, Hell Night (1981), starring Linda Blair. He spent the next six years working in the art department as a set dresser and in set construction while struggling to establish himself as a writer. His first produced writing credit (shared) was on the 1987 film, A Nightmare on Elm Street 3: Dream Warriors (1987), directed by Chuck Russell. Darabont is one of only six filmmakers in history with the unique distinction of having his first two feature films receive nominations for the Best Picture Academy Award: 1994\'s The Shawshank Redemption (1994) (with a total of seven nominations) and 1999\'s The Green Mile (1999) (four nominations). Darabont himself collected Oscar nominations for Best Adapted Screenplay for each film (both based on works by Stephen King), as well as nominations for both films from the Director\'s Guild of America, and a nomination from the Writers Guild of America for The Shawshank Redemption (1994). ','Frank Darabont','Writer, Producer, Director','January 28, 1959','Alive','The Shawsank Redemption, The Green Mile, The Mist','Three-time Oscar nominee Frank Darabont was born in a refugee camp in 1959 in Montbeliard, France, the son of Hungarian parents who had fled Budapest during the failed 1956 Hungarian revolution. Brought to America as an infant, he settled with his family in Los Angeles and attended Hollywood High School. His first job in movies was as a production assistant on the 1981 low-budget film, Hell Night (1981), starring Linda Blair. He spent the next six years working in the art department as a set dresser and in set construction while struggling to establish himself as a writer. His first produced writing credit (shared) was on the 1987 film, A Nightmare on Elm Street 3: Dream Warriors (1987), directed by Chuck Russell. Darabont is one of only six filmmakers in history with the unique distinction of having his first two feature films receive nominations for the Best Picture Academy Award: 1994\'s The Shawshank Redemption (1994) (with a total of seven nominations) and 1999\'s The Green Mile (1999) (four nominations). Darabont himself collected Oscar nominations for Best Adapted Screenplay for each film (both based on works by Stephen King), as well as nominations for both films from the Director\'s Guild of America, and a nomination from the Writers Guild of America for The Shawshank Redemption (1994). He won the Humanitas Prize, the PEN Center USA West Award, and the Scriptor Award for his screenplay of \'The Shawshank Redemption\'. For \'The Green Mile\', he won the Broadcast Film Critics prize for his screenplay adaptation, and two People\'s Choice Awards in the Best Dramatic Film and Best Picture categories. The Majestic (2001), starring Jim Carrey, was released in December 2001. He executive-produced the thriller, Collateral (2004), for DreamWorks, with Michael Mann directing and Tom Cruise starring. Future produced-by projects include \'Way of the Rat\' at DreamWorks with Chuck Russell adapting and directing the CrossGen comic book series and \'Back Roads\', a Tawni O\'Dell novel, also at DreamWorks, with Todd Field attached to direct. Darabont and his production company, \'Darkwoods Productions\', have an overall deal with Paramount Pictures.','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/frank-darabont.webp'),(9,'Quentin Jerome Tarantino was born in Knoxville, Tennessee. His father, Tony Tarantino, is an Italian-American actor and musician from New York, and his mother, Connie (McHugh), is a nurse from Tennessee. Quentin moved with his mother to Torrance, California, when he was four years old.','Quentin Tarantino','Writer, Actor, Producer','March 27, 1963','Alive','Reservoir Dogs, Pulp Fiction, From Dusk Till Dawn','Quentin Jerome Tarantino was born in Knoxville, Tennessee. His father, Tony Tarantino, is an Italian-American actor and musician from New York, and his mother, Connie (McHugh), is a nurse from Tennessee. Quentin moved with his mother to Torrance, California, when he was four years old.\n\nIn January of 1992, first-time writer-director Tarantino\'s Reservoir Dogs (1992) appeared at the Sundance Film Festival. The film garnered critical acclaim and the director became a legend immediately. Two years later, he followed up Dogs success with Pulp Fiction (1994) which premiered at the Cannes film festival, winning the coveted Palme D\'Or Award. At the 1995 Academy Awards, it was nominated for the best picture, best director and best original screenplay. Tarantino and writing partner Roger Avary came away with the award only for best original screenplay. In 1995, Tarantino directed one fourth of the anthology Four Rooms (1995) with friends and fellow auteurs Alexandre Rockwell, Robert Rodriguez and Allison Anders. The film opened December 25 in the United States to very weak reviews. Tarantino\'s next film was From Dusk Till Dawn (1996), a vampire/crime story which he wrote and co-starred with George Clooney. The film did fairly well theatrically.\n\nSince then, Tarantino has helmed several critically and financially successful films, including Jackie Brown (1997), Kill Bill: Vol. 1 (2003), Kill Bill: Vol. 2 (2004), Inglourious Basterds (2009), Django Unchained (2012) and The Hateful Eight (2015).','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/tarantino.webp'),(10,'Denis Villeneuve is a French Canadian film director and writer. He was born in 1967, in Trois-Rivières, Québec, Canada. He started his career as a filmmaker at the National Film Board of Canada. He is best known for his feature films Arrival (2016), Sicario (2015), Prisoners (2013), Enemy (2013), and Incendies (2010). He is married to Tanya Lapointe.','Denis Villeneuve','Director, Writer, Editor','October 3, 1967','Alive','Dune, Blade Runner 2049, Arrival','Denis Villeneuve is a French Canadian film director and writer. He was born in 1967, in Trois-Rivières, Québec, Canada. He started his career as a filmmaker at the National Film Board of Canada. He is best known for his feature films Arrival (2016), Sicario (2015), Prisoners (2013), Enemy (2013), and Incendies (2010). He is married to Tanya Lapointe.','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/denis-villeneuve.jpg'),(11,'James Mangold is an American film and television director, screenwriter and producer. Films he has directed include Girl, Interrupted (1999), Walk the Line (2005), which he also co-wrote, the 2007 remake 3:10 to Yuma (2007), The Wolverine (2013), and Logan (2017).Mangold also wrote and directed Cop Land (1997), starring Sylvester Stallone, Robert De Niro, Harvey Keitel, and Ray Liotta.','James Mangold','Producer, Director, Writer','December 16, 1963','Alive','Logan, Ford v Ferrari, Walk the Line','James Mangold is an American film and television director, screenwriter and producer. Films he has directed include Girl, Interrupted (1999), Walk the Line (2005), which he also co-wrote, the 2007 remake 3:10 to Yuma (2007), The Wolverine (2013), and Logan (2017).\n\nMangold also wrote and directed Cop Land (1997), starring Sylvester Stallone, Robert De Niro, Harvey Keitel, and Ray Liotta.','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/JamesMangold.jpg'),(12,'Stanley Kubrick was born in Manhattan, New York City, to Sadie Gertrude (Perveler) and Jacob Leonard Kubrick, a physician. His family were Jewish immigrants (from Austria, Romania, and Russia). Stanley was considered intelligent, despite poor grades at school. Hoping that a change of scenery would produce better academic performance, Kubrick\'s father sent him in 1940 to Pasadena, California, to stay with his uncle, Martin Perveler. Returning to the Bronx in 1941 for his last year of grammar school, there seemed to be little change in his attitude or his results. Hoping to find something to interest his son, Jack introduced Stanley to chess, with the desired result. Kubrick took to the game passionately, and quickly became a skilled player. Chess would become an important device for Kubrick in later years, often as a tool for dealing with recalcitrant actors, but also as an artistic motif in his films.','Stanley Kubrick','Director, Writer, Producer','July 26, 1928','Died','Barry Lyndon, Full Metal Jacket, A Clockwork Orange','Stanley Kubrick was born in Manhattan, New York City, to Sadie Gertrude (Perveler) and Jacob Leonard Kubrick, a physician. His family were Jewish immigrants (from Austria, Romania, and Russia). Stanley was considered intelligent, despite poor grades at school. Hoping that a change of scenery would produce better academic performance, Kubrick\'s father sent him in 1940 to Pasadena, California, to stay with his uncle, Martin Perveler. Returning to the Bronx in 1941 for his last year of grammar school, there seemed to be little change in his attitude or his results. Hoping to find something to interest his son, Jack introduced Stanley to chess, with the desired result. Kubrick took to the game passionately, and quickly became a skilled player. Chess would become an important device for Kubrick in later years, often as a tool for dealing with recalcitrant actors, but also as an artistic motif in his films.\n\nJack Kubrick\'s decision to give his son a camera for his thirteenth birthday would be an even wiser move: Kubrick became an avid photographer, and would often make trips around New York taking photographs which he would develop in a friend\'s darkroom. After selling an unsolicited photograph to Look Magazine, Kubrick began to associate with their staff photographers, and at the age of seventeen was offered a job as an apprentice photographer.\n\nIn the next few years, Kubrick had regular assignments for \'Look\', and would become a voracious movie-goer. Together with friend Alexander Singer, Kubrick planned a move into film, and in 1950 sank his savings into making the documentary Day of the Fight (1951). This was followed by several short commissioned documentaries (Flying Padre (1951), and (The Seafarers (1953), but by attracting investors and hustling chess games in Central Park, Kubrick was able to make Fear and Desire (1953) in California.\n\nFilming this movie was not a happy experience; Kubrick\'s marriage to high school sweetheart Toba Metz did not survive the shooting. Despite mixed reviews for the film itself, Kubrick received good notices for his obvious directorial talents. Kubrick\'s next two films Killer\'s Kiss (1955) and The Killing (1956) brought him to the attention of Hollywood, and in 1957 he directed Kirk Douglas in Paths of Glory (1957). Douglas later called upon Kubrick to take over the production of Spartacus (1960), by some accounts hoping that Kubrick would be daunted by the scale of the project and would thus be accommodating. This was not the case, however: Kubrick took charge of the project, imposing his ideas and standards on the film. Many crew members were upset by his style: cinematographer Russell Metty complained to producers that Kubrick was taking over his job. Kubrick\'s response was to tell him to sit there and do nothing. Metty complied, and ironically was awarded the Academy Award for his cinematography.\n\nKubrick\'s next project was to direct Marlon Brando in One-Eyed Jacks (1961), but negotiations broke down and Brando himself ended up directing the film himself. Disenchanted with Hollywood and after another failed marriage, Kubrick moved permanently to England, from where he would make all of his subsequent films. Despite having obtained a pilot\'s license, Kubrick was rumored to be afraid of flying.\n\nKubrick\'s first UK film was Lolita (1962), which was carefully constructed and guided so as to not offend the censorship boards which at the time had the power to severely damage the commercial success of a film. Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb (1964) was a big risk for Kubrick; before this, \'nuclear\' was not considered a subject for comedy. Originally written as a drama, Kubrick decided that too many of the ideas he had written were just too funny to be taken seriously. The film\'s critical and commercial success allowed Kubrick the financial and artistic freedom to work on any project he desired. Around this time, Kubrick\'s focus diversified and he would always have several projects in various stages of development: \'Blue Moon\' (a story about Hollywood\'s first pornographic feature film), \'Napoleon\' (an epic historical biography, abandoned after studio losses on similar projects), \'Wartime Lies\' (based on the novel by Louis Begley), and \'Rhapsody\' (a psycho-sexual thriller).\n\nThe next film he completed was a collaboration with sci-fi author Arthur C. Clarke. 2001: A Space Odyssey (1968) is hailed by many as the best ever made; an instant cult favorite, it has set the standard and tone for many science fiction films that followed. Kubrick followed this with A Clockwork Orange (1971), which rivaled Lolita (1962) for the controversy it generated - this time not only for its portrayal of sex, but also of violence. Barry Lyndon (1975) would prove a turning point in both his professional and private lives. His unrelenting demands of commitment and perfection of cast and crew had by now become legendary. Actors would be required to perform dozens of takes with no breaks. Filming a story in Ireland involving military, Kubrick received reports that the IRA had declared him a possible target. Production was promptly moved out of the country, and Kubrick\'s desire for privacy and security resulted in him being considered a recluse ever since.\n\nHaving turned down directing a sequel to The Exorcist (1973), Kubrick made his own horror film: The Shining (1980). Again, rumors circulated of demands made upon actors and crew. Stephen King (whose novel the film was based upon) reportedly didn\'t like Kubrick\'s adaptation (indeed, he would later write his own screenplay which was filmed as The Shining (1997).)\n\nKubrick\'s subsequent work has been well spaced: it was seven years before Full Metal Jacket (1987) was released. By this time, Kubrick was married with children and had extensively remodeled his house. Seen by one critic as the dark side to the humanist story of Platoon (1986), Full Metal Jacket (1987) continued Kubrick\'s legacy of solid critical acclaim, and profit at the box office.\n\nIn the 1990s, Kubrick began an on-again/off-again collaboration with Brian Aldiss on a new science fiction film called \'Artificial Intelligence (AI)\', but progress was very slow, and was backgrounded until special effects technology was up to the standard the Kubrick wanted.\n\nKubrick returned to his in-development projects, but encountered a number of problems: \'Napoleon\' was completely dead, and \'Wartime Lies\' (now called \'The Aryan Papers\') was abandoned when Steven Spielberg announced he would direct Schindler\'s List (1993), which covered much of the same material.\n\nWhile pre-production work on \'AI\' crawled along, Kubrick combined \'Rhapsody\' and \'Blue Movie\' and officially announced his next project as Eyes Wide Shut (1999), starring the then-married Tom Cruise and Nicole Kidman. After two years of production under unprecedented security and privacy, the film was released to a typically polarized critical and public reception; Kubrick claimed it was his best film to date.\n\nSpecial effects technology had matured rapidly in the meantime, and Kubrick immediately began active work on A.I. Artificial Intelligence (2001), but tragically suffered a fatal heart attack in his sleep on March 7th, 1999.\n\nAfter Kubrick\'s death, Spielberg revealed that the two of them were friends that frequently communicated discreetly about the art of filmmaking; both had a large degree of mutual respect for each other\'s work. \'AI\' was frequently discussed; Kubrick even suggested that Spielberg should direct it as it was more his type of project. Based on this relationship, Spielberg took over as the film\'s director and completed the last Kubrick project.\n\nHow much of Kubrick\'s vision remains in the finished project -- and what he would think of the film as eventually released -- will be the final great unanswerable mysteries in the life of this talented and private filmmaker.','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/kubrick.webp'),(13,'Born in precisely the kind of small-town American setting so familiar from his films, David Lynch spent his childhood being shunted from one state to another as his research scientist father kept getting relocated. He attended various art schools, married Peggy Lynch and then fathered future director Jennifer Lynch shortly after he turned 21. That experience, plus attending art school in a particularly violent and run-down area of Philadelphia, inspired Eraserhead (1977), a film that he began in the early 1970s (after a couple of shorts) and which he would work on obsessively for five years. The final film was initially judged to be almost unreleasable weird, but thanks to the efforts of distributor Ben Barenholtz, it secured a cult following and enabled Lynch to make his first mainstream film (in an unlikely alliance with Mel Brooks), though The Elephant Man (1980) was shot through with his unique sensibility. ','David Lynch','Writer, Director, Producer','January 20, 1946','Alive','Twin Peaks, Inland Empire, Mulholland Drive','Born in 1946 in Missoula, Montana, David Lynch was raised in small-town America. After high school, he went to Boston to attend the School of the Museum of Fine Arts. Shortly after that, he planned a three-year trip to Europe to work on his art, but didn\'t take to it and left after 15 days. In 1977, he released his first film Eraserhead (1977), which, although not critically acclaimed, was noticed by many people, including Francis Ford Coppola, who was rumored to have screenings of it for his cast and crew on the Apocalypse Now (1979) set. After a stream of visually striking films such as Blue Velvet (1986), Lost Highway (1997) and Mulholland Drive (2001). These films and others, beginning with Blue Velvet (1986), and including his Twin Peaks (1990) T.V. series, feature what has now been added to signature Lynch features, such as vibrant colors, the use of dreams and montage to connect character thought and multiple emotions into one sequence. In addition to that, since Blue Velvet (1986), Lynch has gained the reputation of one of the foremost auteurs in the film industry, and one of the few living auteurs who continually defies cinematic convention. His films continually represent his ideal that films, representing life, should be complex, and in some cases, inexplicable. Due to his decisive innovation and the beautiful confusion of his films, he will always be recognized as if not one of the greatest film-makers, one of the most original. Lynch is an innovative director, and even if his films aren\'t necessarily realistic, they are real in their representation of what life is: a confusing, irrational series of events that have little purpose, and one makes one\'s own interpretation of each event, giving life one\'s own purpose. Lynch wants his films to resonate emotionally and instinctively, and for every person to relate and find its own understanding. As he said, \'Life is very, very confusing, and so films should be allowed to be, too\'. David Lynch is original. He has done things in film-making that D.W. Griffith did in his day. David Lynch will never stop making beauty on the screen.','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/david-lynch.jpg'),(14,'Francis Ford Coppola was born in 1939 in Detroit, Michigan, but grew up in a New York suburb in a creative, supportive Italian-American family. His father, Carmine Coppola, was a composer and musician. His mother, Italia Coppola (née Pennino), had been an actress. Francis Ford Coppola graduated with a degree in drama from Hofstra University, and did graduate work at UCLA in filmmaking. He was training as assistant with filmmaker Roger Corman, working in such capacities as sound-man, dialogue director, associate producer and, eventually, director of Dementia 13 (1963), Coppola\'s first feature film. During the next four years, Coppola was involved in a variety of script collaborations, including writing an adaptation of \"This Property is Condemned\" by Tennessee Williams (with Fred Coe and Edith Sommer), and screenplays for Is Paris Burning? (1966) and Patton (1970), the film for which Coppola won a Best Original Screenplay Academy Award. In 1966, Coppola\'s 2nd film brought him critical acclaim and a Master of Fine Arts degree. ','Francis Ford Coppola','Producer, Director, Writer','April 7, 1939','Alive','Apocalypse Now, The Conversation, The Godfather','Francis Ford Coppola was born in 1939 in Detroit, Michigan, but grew up in a New York suburb in a creative, supportive Italian-American family. His father, Carmine Coppola, was a composer and musician. His mother, Italia Coppola (née Pennino), had been an actress. Francis Ford Coppola graduated with a degree in drama from Hofstra University, and did graduate work at UCLA in filmmaking. He was training as assistant with filmmaker Roger Corman, working in such capacities as sound-man, dialogue director, associate producer and, eventually, director of Dementia 13 (1963), Coppola\'s first feature film. During the next four years, Coppola was involved in a variety of script collaborations, including writing an adaptation of \'This Property is Condemned\' by Tennessee Williams (with Fred Coe and Edith Sommer), and screenplays for Is Paris Burning? (1966) and Patton (1970), the film for which Coppola won a Best Original Screenplay Academy Award. In 1966, Coppola\'s 2nd film brought him critical acclaim and a Master of Fine Arts degree. In 1969, Coppola and George Lucas established American Zoetrope, an independent film production company based in San Francisco. The company\'s first project was THX 1138 (1971), produced by Coppola and directed by Lucas. Coppola also produced the second film that Lucas directed, American Graffiti (1973), in 1973. This movie got five Academy Award nominations, including one for Best Picture. In 1971, Coppola\'s film The Godfather (1972) became one of the highest-grossing movies in history and brought him an Oscar for writing the screenplay with Mario Puzo The film was a Best Picture Academy Award-winner, and also brought Coppola a Best Director Oscar nomination. Following his work on the screenplay for The Great Gatsby (1974), Coppola\'s next film was The Conversation (1974), which was honored with the Golden Palm Award at the Cannes Film Festival, and brought Coppola Best Picture and Best Original Screenplay Oscar nominations. Also released that year, The Godfather Part II (1974), rivaled the success of The Godfather (1972), and won six Academy Awards, bringing Coppola Oscars as a producer, director and writer. Coppola then began work on his most ambitious film, Apocalypse Now (1979), a Vietnam War epic that was inspired by Joseph Conrad\'s Heart of Darkness (1993). Released in 1979, the acclaimed film won a Golden Palm Award at the Cannes Film Festival, and two Academy Awards. Also that year, Coppola executive produced the hit The Black Stallion (1979). With George Lucas, Coppola executive produced Kagemusha (1980), directed by Akira Kurosawa, and Mishima: A Life in Four Chapters (1985), directed by Paul Schrader and based on the life and writings of Yukio Mishima. Coppola also executive produced such films as The Escape Artist (1982), Hammett (1982) The Black Stallion Returns (1983), Barfly (1987), Wind (1992), The Secret Garden (1993), etc.\n\nHe helped to make a star of his nephew, Nicolas Cage. Personal tragedy hit in 1986 when his son Gio died in a boating accident. Francis Ford Coppola is one of America\'s most erratic, energetic and controversial filmmakers.','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/coppola.webp'),(15,'Roman Polanski is a Polish film director, producer, writer and actor. Having made films in Poland, Britain, France and the USA, he is considered one of the few truly international filmmakers. Roman Polanski was born in Paris in 1933.','Roman Polanski','Director, Actor, Writer','August 18, 1933','Alive','Chinatown, The Tenant, Rosemary\'s Baby ','Roman Polanski is a Polish film director, producer, writer and actor. Having made films in Poland, Britain, France and the USA, he is considered one of the few truly international filmmakers. Roman Polanski was born in Paris in 1933.\n\nHis parents returned to Poland from France in 1936, three years before World War II began. On Germany\'s invasion in 1939, as a family of mostly Jewish heritage, they were all sent to the Krakow ghetto. His parents were then captured and sent to two different concentration camps: His father to Mauthausen-Gusen in Austria, where he survived the war, and his mother to Auschwitz where she was murdered. Roman witnessed his father\'s capture and then, at only 7, managed to escape the ghetto and survive the war, at first wandering through the Polish countryside and pretending to be a Roman-Catholic kid visiting his relatives. Although this saved his life, he was severely mistreated suffering nearly fatal beating which left him with a fractured skull.\n\nLocal people usually ignored the cinemas where German films were shown, but Polanski seemed little concerned by the propaganda and often went to the movies. As the war progressed, Poland became increasingly war-torn and he lived his life as a tramp, hiding in barns and forests, eating whatever he could steal or find. Still under 12 years old, he encountered some Nazi soldiers who forced him to hold targets while they shot at them. At the war\'s end in 1945, he reunited with his father who sent him to a technical school, but young Polanski seemed to have already chosen another career. In the 1950s, he took up acting, appearing in Andrzej Wajda\'s A Generation (1955) before studying at the Lodz Film School. His early shorts such as Two Men and a Wardrobe (1958), Le gros et le maigre (1961) and Mammals (1962), showed his taste for black humor and interest in bizarre human relationships. His feature debut, Knife in the Water (1962), was one of the first Polish post-war films not associated with the war theme. It was also the first movie from Poland to get an Oscar nomination for best foreign film. Though already a major Polish filmmaker, Polanski chose to leave the country and headed to France. While down-and-out in Paris, he befriended young scriptwriter, Gérard Brach, who eventually became his long-time collaborator. The next two films, Repulsion (1965) and Cul-de-sac (1966), made in England and co-written by Brach, won respectively Silver and then Golden Bear awards at the Berlin International Film Festival. In 1968, Polanski went to Hollywood, where he made the psychological thriller, Rosemary\'s Baby (1968). However, after the brutal murder of his wife, Sharon Tate, by the Manson Family in 1969, the director decided to return to Europe. In 1974, he again made a US release - it was Chinatown (1974).\n\nIt seemed the beginning of a promising Hollywood career, but after his conviction for the sodomy of a 13-year old girl, Polanski fled from he USA to avoid prison. After Tess (1979), which was awarded several Oscars and Cesars, his works in 1980s and 1990s became intermittent and rarely approached the caliber of his earlier films. It wasn\'t until The Pianist (2002) that Polanski came back to full form. For that movie, he won nearly all the most important film awards, including the Oscar for Best Director, Cannes Film Festival\'s Palme d\'Or, the BAFTA and Cesar Award.\n\nHe still likes to act in the films of other directors, sometimes with interesting results, as in A Pure Formality (1994).','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/polanski.jpg');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_favorite_user_id` (`user_id`),
  KEY `fk_favorite_movie_id` (`movie_id`),
  KEY `fk_favorite_director_id` (`director_id`),
  CONSTRAINT `fk_favorite_director_id` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_favorite_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_favorite_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES (31,16,NULL,4),(32,16,NULL,4),(33,16,NULL,4);
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (5,'Mystery'),(6,'Thriller'),(7,'Adventure'),(8,'Drama'),(9,'Sci-Fi'),(10,'Music'),(11,'Crime'),(12,'Fantasy'),(13,'Western'),(14,'Action'),(15,'Biography'),(16,'Horror');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `length` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` float NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (3,'Shutter Island',2010,'2h 18m',8.2,'Teddy Daniels and Chuck Aule, two US marshals, are sent to an asylum on a remote island in order to investigate the disappearance of a patient, where Teddy uncovers a shocking truth about the place.','Laeta Kalogridis','Leonardo DiCaprio, Emily Mortimer, Mark Ruffalo','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/shutter.jpg','https://youtu.be/v8yrZSkKxTA'),(4,'Interstellar',2014,'2h 49m',8.7,'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.','Jonathan Nolan','Matthew McConaughey, Anne Hathaway, Jessica Chastain','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/interstellar-poster.webp','https://youtu.be/zSWdZVtXT7E'),(5,'Whiplash',2014,'1h 46m',8.5,'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.','Damien Chazelle','Miles Teller, J.K. Simmons, Melissa Benoist','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/whiplash.jpg','https://youtu.be/7d_jQycdQGo'),(6,'Zodiac',2007,'2h 37m',7.7,'Between 1968 and 1983, a San Francisco cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer, an unidentified individual who terrorizes Northern California with a killing spree.','James Vanderbilt','Jake Gyllenhaal, Robert Downey Jr., Mark Ruffalo','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/zodiac-movie-poster.jpg','https://youtu.be/yNncHPl1UXg'),(7,'The Green Mile',1999,'3h 9m',8.6,'A tale set on death row in a Southern jail, where gentle giant John possesses the mysterious power to heal people\'s ailments. When the lead guard, Paul, recognizes John\'s gift, he tries to help stave off the condemned man\'s execution.','Stephen King','Tom Hanks, Michael Clarke Duncan, David Morse','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/green-mile.webp','https://youtu.be/Ki4haFrqSrw'),(8,'Django Unchained',2012,'2h 45m',8.4,'With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation owner in Mississippi.','Quentin Tarantino','Jamie Foxx, Christoph Waltz, Leonardo DiCaprio','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/django-poster.webp','https://youtu.be/_iH0UBYDI4g'),(9,'Prisoners',2013,'2h 33m',8.1,'When Keller Dover\'s daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.','Aaron Guzikowski','Hugh Jackman, Jake Gyllenhaal, Viola Davis','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/Prisoners.jpg','https://youtu.be/bpXfcTF6iVk'),(10,'Ford v Ferrari',2019,'2h 32m',8.1,'American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.','Jez Butterworth','Matt Damon, Christian Bale, Jon Bernthal','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/ford-v-ferrari-poster.jpg','https://youtu.be/zyYgDtY2AMY'),(11,'The Shining ',1980,'2h 26m',8.4,'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.','Stephen King','Jack Nicholson, Shelley Duvall, Danny Lloyd','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/the-shining-poster.jpg','https://youtu.be/FZQvIJxG9Xs'),(12,'Mulholland Drive',2001,'2h 27m',7.9,'After a car wreck on the winding Mulholland Drive renders a woman amnesiac, she and a perky Hollywood-hopeful search for clues and answers across Los Angeles in a twisting venture beyond dreams and reality.','David Lynch','Naomi Watts, Laura Harring, Justin Theroux','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/mulholland-drive.jpg','https://youtu.be/jbZJ487oJlY'),(13,'The Godfather',1972,'2h 55m',9.2,'Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger.','Mario Puzo','Marlon Brando, Al Pacino, James Caan','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/the-godfather.jpg','https://youtu.be/UaVTIH8mujA'),(14,'The Pianist',2002,'2h 30m',8.5,'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.','Ronald Harwood','Adrien Brody, Thomas Kretschmann, Frank Finlay','https://filmsystemimages.fra1.cdn.digitaloceanspaces.com/the-pianist.jpg','https://youtu.be/BFwGqLa_oAo');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_director`
--

DROP TABLE IF EXISTS `movie_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_director` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_movie_director_movie_movie_id` (`movie_id`),
  KEY `fk_movie_director_director_director_id` (`director_id`),
  CONSTRAINT `fk_movie_director_director_director_id` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`),
  CONSTRAINT `fk_movie_director_movie_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_director`
--

LOCK TABLES `movie_director` WRITE;
/*!40000 ALTER TABLE `movie_director` DISABLE KEYS */;
INSERT INTO `movie_director` VALUES (4,3,4),(5,4,5),(6,5,6),(7,6,7),(8,7,8),(9,8,9),(10,9,10),(11,10,11),(12,11,12),(13,12,13),(14,13,14),(15,14,15);
/*!40000 ALTER TABLE `movie_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_movie_genre_movie_movie_id` (`movie_id`),
  KEY `fk_movie_genre_genre_genre_id` (`genre_id`),
  CONSTRAINT `fk_movie_genre_genre_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  CONSTRAINT `fk_movie_genre_movie_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES (6,3,5),(7,3,6),(20,4,7),(21,4,8),(22,4,9),(23,5,8),(24,5,9),(25,6,11),(26,6,8),(27,6,5),(28,7,11),(29,7,8),(30,7,12),(31,8,8),(32,8,13),(33,9,11),(34,9,8),(35,9,5),(36,10,14),(37,10,15),(38,10,8),(41,11,8),(42,11,16),(43,12,8),(44,12,5),(45,12,6),(46,13,11),(47,13,8),(48,14,15),(49,14,8),(50,14,10);
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_rating`
--

DROP TABLE IF EXISTS `movie_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_movie_rating_rating_id` (`rating_id`),
  KEY `fk_movie_rating_movie_id` (`movie_id`),
  CONSTRAINT `fk_movie_rating_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_rating_rating_id` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_rating`
--

LOCK TABLES `movie_rating` WRITE;
/*!40000 ALTER TABLE `movie_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (16,'ammar','$2y$10$q3ncRR.ROkCf1jrboaq7Veg9WR9oSP1wAW6vy1PY6hIiysiOkDSNy','amar@gmail.com','2023-07-01 20:00:14');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchlist`
--

DROP TABLE IF EXISTS `watchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_watchlist_user_id` (`user_id`),
  KEY `fk_watchlist_movie_id` (`movie_id`),
  CONSTRAINT `fk_watchlist_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_watchlist_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchlist`
--

LOCK TABLES `watchlist` WRITE;
/*!40000 ALTER TABLE `watchlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `watchlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-05  1:18:53
