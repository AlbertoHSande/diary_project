import com.lucatic.agenda.model.Persona;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

@Service
@Transactional
public class PersonaService implements IPersonaService {
	
@Autowired

private DAOPersona DAOPersona;

public List<Persona> list(){
	return DAOPersona.list();
}

public void delete(int id){
	DAOPersona.delete(id);
}

public void insert(int id){
	DAOPersona.insert(id);
}


}
