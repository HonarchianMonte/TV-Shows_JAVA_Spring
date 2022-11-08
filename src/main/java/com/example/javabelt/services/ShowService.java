package com.example.javabelt.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.javabelt.models.Show;
import com.example.javabelt.repositories.ShowRepository;

@Service
public class ShowService {

	@Autowired
	private ShowRepository showRepo;
	
	//Create
	public Show createShow(Show show) {
		return showRepo.save(show);
	}
	//Find All
	public List<Show> allShows(){
		return showRepo.findAll();
	}
	
	//Find One
	public Show oneShow(Long id) {
		Optional<Show> optionalShow = showRepo.findById(id);
		if(optionalShow.isPresent()) {
			return optionalShow.get();
		}else {
			return null;
		}
	}
	
	//Edit Process
	public Show editShow(Show show) {
		return showRepo.save(show);
	}
	
	//Delete
	public void deleteShow(Long id) {
		showRepo.deleteById(id);
	}
	
}
