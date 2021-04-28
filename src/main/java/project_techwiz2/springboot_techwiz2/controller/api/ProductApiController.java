package project_techwiz2.springboot_techwiz2.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import project_techwiz2.springboot_techwiz2.config.exeption.ErrorDetails;
import project_techwiz2.springboot_techwiz2.config.exeption.ResourceNotFoundException;
import project_techwiz2.springboot_techwiz2.model.core.Menu;
import project_techwiz2.springboot_techwiz2.model.core.Product;
import project_techwiz2.springboot_techwiz2.model.dto.ProductDto;
import project_techwiz2.springboot_techwiz2.repository.core.ProductRepository;
import project_techwiz2.springboot_techwiz2.repository.dto.ProductDtoRepository;


import javax.validation.Valid;
import java.util.Date;
import java.util.List;
import java.util.NoSuchElementException;


@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping(path = "api/product")
public class ProductApiController {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ProductDtoRepository productDtoRepository;

    @RequestMapping(path = "")
    public List<ProductDto> getProduct()
    {
        List<ProductDto> list = productDtoRepository.findAll();
        return list;
    }

    @RequestMapping(path = "/category")
    public List<ProductDto> getProductByCate(@RequestParam("cate_id")Integer cate_id)
    {
        List<ProductDto> list = productDtoRepository.getProByCate(cate_id);
        return list;
    }

    @RequestMapping(path = "/status")
    public List<ProductDto> getProByStatus(@RequestParam("status")Integer status)
    {
        List<ProductDto> list = productDtoRepository.findAllByStatus(status);
        return list;
    }


    @RequestMapping(path = "/{id}")
    public ProductDto getProById(@PathVariable(value = "id")Integer id)
    {
        ProductDto productDto = productDtoRepository.findById(id)
                .orElseThrow(()->new ResourceNotFoundException("User not found with id :"+id));
        return productDto;
    }

    @RequestMapping(path = "",method = RequestMethod.POST)
    public ResponseEntity<?> saveMenu(@Valid @RequestBody ProductDto productDto)
    {
        try{
            productDto.setCreated(new Date());
            productDto.setUpdated(new Date());
            productDtoRepository.save(productDto);
            return new ResponseEntity<ProductDto>(productDto, HttpStatus.OK);
        }catch (NoSuchElementException e)
        {

        }
        ErrorDetails errorDetails = new ErrorDetails();
        errorDetails.setTimestamp(new Date());
        errorDetails.setMessage("Add new unsuccessful");
        return new ResponseEntity<ErrorDetails>(errorDetails, HttpStatus.NOT_FOUND);
    }





}
