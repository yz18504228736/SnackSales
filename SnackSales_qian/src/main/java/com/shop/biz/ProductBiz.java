package com.shop.biz;

import com.shop.dao.ProductMapper;
import com.shop.dao.SizeMapper;
import com.shop.entity.Product;
import com.shop.entity.Size;
import com.shop.entity.Stype;
import com.shop.entity.VO.ProductVO;
import com.shop.util.Constants;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 产品管理层
 * dengkungang
 */
@Service
public class ProductBiz {
    @Resource
    private ProductMapper productMapper;
    @Resource
    private SizeMapper sizeMapper;

//    添加产品
    public int saveProduct(Product product) {
        return productMapper.insertSelective(product);
    }

//    根据产品Id删除产品
    public int deleteProductById(int productId) {
        return productMapper.deleteByPrimaryKey(productId);
    }

//    动态修改产品
    public int updateProduct(Product product) {
        return productMapper.updateByPrimaryKeySelective(product);
    }

//    查找所有分页产品
    public List<Product> findAllProductByPage(int currentPage) {
        int page = (currentPage - 1)* Constants.PAGE_SIZE;
        return productMapper.findAllProductByPage(page);
    }

//    查询所有产品
    public List<Product> findAllProduct() {
        return productMapper.findAllProduct();
    }

//    根据大类的Id查询所有产品
    public List<Product> findAllProductByBtypeId(int btypeId) {
        return productMapper.findAllProductByBtypeId(btypeId);
    }

//    根据小类的Id查询对应的所有产品
    public List<Product> findAllProductByStypeId(int stypeId) {
        return productMapper.findAllProductByStypeId(stypeId);
    }

//    查询产品表中的所有记录条数
    public long findCount() {
        return productMapper.findCount();
    }

    //根据产品名找到产品具体信息
    public Product findByProName(String proName){
        return productMapper.findByProName(proName);
    }


//    根据产品Id查询对应的产品
    public Product findProductById(int productId) {
        return productMapper.selectByPrimaryKey(productId);
    }

//    添加 VO产品
    public void saveProductVO(ProductVO productVO) {
        Stype stype = new Stype();
        stype.setStypeId(productVO.getStypeId());
        Product product = new Product();
        product = productVO.getProduct();
        product.setStype(stype);

        //添加产品表
        if ( null != product) {
            int row =  productMapper.insertSelective(product);
        }

        //添加规格表
        String [] sizes = productVO.getSizes();
        if (null != sizes) {
            for (int i=0;i<sizes.length;i++) {
                if (null != sizes[i] && !sizes[i].trim().equals("")) {
                    Size size = new Size();
                    size.setProductId(product.getProductId());
                    size.setSizeName(sizes[i]);
                    int row =  sizeMapper.insert(size);
                }
            }
        }
    }
}
