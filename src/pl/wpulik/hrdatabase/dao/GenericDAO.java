package pl.wpulik.hrdatabase.dao;

import java.io.Serializable;
import java.util.List;

public interface GenericDAO <T, PK extends Serializable>{
	
	
    List<T> getAll();

}
