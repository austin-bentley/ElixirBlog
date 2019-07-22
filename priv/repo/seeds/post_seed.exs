alias ElixirBlog.Repo
alias ElixirBlog.Blog.Post

Repo.insert! %Post {
    title: "Cars",
    subtitle: "They take you places and fast!",
    content: "Racecar Lightning McQueen (Owen Wilson) and his tow-truck
     buddy, Mater (Larry the Cable Guy), have had their share of adventures 
     together but nothing like what they experience when they head overseas 
     for the first-ever World Grand Prix. While Lightning has his eye on the 
     road to the championship, Mater takes a detour to international 
     espionage when he meets British master spy Finn McMissile 
     (Michael Caine) and stunning spy-in-training Holley Shiftwell 
     (Emily Mortimer).",
    slug: "cars"
}

Repo.insert! %Post {
    title: "Lorem Ipsum",
    subtitle: "Yeah it's got origins!",
    content: "Contrary to popular belief, Lorem Ipsum is not simply random text.
     It has roots in a piece of classical Latin literature from 45 BC, 
     making it over 2000 years old. Richard McClintock, a Latin professor 
     at Hampden-Sydney College in Virginia, looked up one of the more obscure 
     Latin words, consectetur, from a Lorem Ipsum passage, and going 
     through the cites of the word in classical literature, discovered the 
     undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 
     of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) 
     by Cicero, written in 45 BC. This book is a treatise on the theory of 
     ethics, very popular during the Renaissance. The first line of Lorem Ipsum, 
     \"Lorem ipsum dolor sit amet..\", comes from a line in section 
     1.10.32.\ The standard chunk of Lorem Ipsum used since the 1500s is 
     reproduced below for those interested. Sections 1.10.32 and 1.10.33 
     from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in 
     their exact original form, accompanied by English versions from the 
     1914 translation by H. Rackham.",
    slug: "lorem-ipsum"
}

Repo.insert! %Post {
    title: "Black Metal",
    subtitle: "Cringy but in a good way...",
    content: "Black metal is an extreme subgenre of heavy metal music.
     Common traits include fast tempos, a shrieking vocal style,[7][8][9] 
     heavily distorted guitars played with tremolo picking, raw (lo-fi) 
     recording, unconventional song structures, and an emphasis on atmosphere. 
     Artists often appear in corpse paint and adopt pseudonyms.
     During the 1980s, several thrash metal and death metal bands formed a 
     prototype for black metal.[2] This so-called first wave included bands 
     such as Venom, Bathory, Mercyful Fate, Hellhammer and Celtic Frost.[10] 
     A second wave arose in the early 1990s, spearheaded by Norwegian bands 
     such as Mayhem, Darkthrone, Burzum, Immortal, Emperor, Satyricon and 
     Gorgoroth. The early Norwegian black metal scene developed the style of 
     their forebears into a distinct genre. Norwegian-inspired black metal 
     scenes emerged throughout Europe and North America, although some other 
     scenes developed their own styles independently. Some prominent Swedish 
     bands spawned during this second wave, such as Marduk, Nifelheim and 
     Dark Funeral.[11]",
    slug: "black-metal"
}