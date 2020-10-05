<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\Livres;
use App\Entity\Category;
use App\Entity\Comment;
use App\Form\LivreType;
use App\Form\CommentType;





class BiblioController extends AbstractController
{
    /**
     * @Route("/biblio", name="biblio")
     */
    public function index()
    {
        $repo = $this->getDoctrine()->getRepository(Livres::class);
        $livres = $repo->findAll();
        return $this->render('biblio/index.html.twig', [
            'controller_name' => 'BiblioController',
            'livres' => $livres
        ]);
    }

    /**
     * @Route("/", name="home")
     */
    public function home()
    {
        return $this->render('biblio/home.html.twig');

    }

     /**
     * @Route ("/biblio/new", name="biblio_new")
     * @Route ("/biblio/{id}/edit", name="biblio_edit")
     */
    public function form(Livres $livre = null, Request $request, EntityManagerInterface  $manager){

        if(!$livre){
        $livre = new Livres();
        }

        $form = $this->createForm(LivreType::class, $livre) ;
      

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $livre->setCreatedAt(new \DateTime());
            $manager->persist($livre);
            $manager->flush();
            return $this->redirectToRoute('biblio_plus',['id'=> $livre->getId()]);


        }


        return $this->render('biblio/new.html.twig',[
            'formLivre' => $form->createView(),
            'editmode' => $livre->getId() !== null
        ]);
    }



    /**
     * @Route("/biblio/{id}", name="biblio_plus")
     */
    public function plus(Livres $livre, Request $request,  EntityManagerInterface  $manager){
        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $comment->setCreatedAt(new \DateTime())
                    ->setLivre($livre);
                    
            $manager->persist($comment);
            $manager->flush();

            return $this->redirectToRoute('biblio_plus', ['id' => $livre->getId()
            ]);
        }

        return $this->render('biblio/plus.html.twig',[
            'livre' => $livre,
            'commentForm' => $form->createView()
        ]);
    }
    /**
     * @Route ("/biblio/{id}/delete", name="biblio_delete")

    */
    public function removeEntity(Livres $livre = null, EntityManagerInterface $manager){
        $manager = $this->getDoctrine()->getManager();
        $manager->remove($livre);
        $manager->flush();
        return $this->redirectToRoute('biblio');

        }
   
}

