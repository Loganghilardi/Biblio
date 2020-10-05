<?php

namespace App\DataFixtures;
use App\Entity\Category;
use App\Entity\Comment;
use App\Entity\Livres;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class LivresFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = \Faker\Factory::create('fr_FR'); 

        //3 caté
        for($i = 1;$i<= 3 ; $i++){
            $category = new Category();
            $category->setTitle($faker->sentence());
            $manager->persist($category);



            


        for($j = 1; $j <= mt_rand(4,6); $j++){
 
            $livre = new Livres();

            $content = '<p>' . join($faker->paragraphs(5), '</p><p>') . '</p>';

            $livre->setTitle($faker->sentence())
                ->setContent($content)
                ->setImage($faker->imageUrl()) 
                ->setDateEdition($faker->year('now'))
                ->setAuteur("Perno")
                ->setCategory($category)
                ->setCreatedAt(new \DateTime());
                $manager->persist($livre);

                for($k = 1 ;$k <= mt_rand(4,10); $k++)
                {
                    $content = '<p>' . join($faker->paragraphs(1), '</p><p>') . '</p>';
                    $now = new \DateTime();
                    $interval =  $now->diff($livre->getCreatedAt());
                    $days = $interval->days;
                     $minimum ='-' . $days . 'days ';
                    $comment = new Comment();

                    $comment->setAuthor($faker->name)
                            ->setContent($content)
                            ->setCreatedAt($faker->dateTimeBetween($minimum))
                            ->setLivre($livre);
                            $manager ->persist($comment);
                }
                
            
            }
        }
           

        $manager->flush();
    }
}
