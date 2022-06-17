package comr.br.pepper.hello.hello.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/test")
public class DefaulController {

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<String> find(){
        return ResponseEntity.ok().body("Hello World");
    }
}
