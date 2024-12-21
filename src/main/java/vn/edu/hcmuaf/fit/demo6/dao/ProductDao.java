package vn.edu.hcmuaf.fit.demo6.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.demo6.dao.db.DBConnect;
import vn.edu.hcmuaf.fit.demo6.dao.db.DBProperties;
import vn.edu.hcmuaf.fit.demo6.dao.db.JDBIConnect;
import vn.edu.hcmuaf.fit.demo6.dao.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDao {
    static Map<Integer, Product> data = new HashMap<>();

    static{
        data.put(1, new Product(1, "Áo thun nam t1", 300000, "https://cdn2.yame.vn/pimg/ao-thun-co-tron-seventy-seven-03-0022714/d7bfa8bf-7154-0100-d5db-001ad4c59b4b.jpg?w=540&h=756&c=true&ntf=false"));
        data.put(2, new Product(2, "Áo sơ mi nữ t1", 400000, "https://cdn2.yame.vn/pimg/ao-thun-co-tron-seventy-seven-03-0022714/d7bfa8bf-7154-0100-d5db-001ad4c59b4b.jpg?w=540&h=756&c=true&ntf=false"));
        data.put(3, new Product(3, "Áo polo nam", 500000, "https://cdn2.yame.vn/pimg/ao-polo-seventy-seven-03-0022722/b1829418-260c-1100-bd5f-001ad4c66874.jpg?w=540&h=756"));
        data.put(4, new Product(4, "váy liền nữ t1", 600000, "https://cdn2.yame.vn/pimg/ao-polo-seventy-seven-03-0022722/b1829418-260c-1100-bd5f-001ad4c66874.jpg?w=540&h=756"));
        data.put(5, new Product(5, "quần jean nam t1", 450000, "https://cdn2.yame.vn/pimg/ao-thun-co-tron-seventy-seven-03-0022714/d7bfa8bf-7154-0100-d5db-001ad4c59b4b.jpg?w=540&h=756&c=true&ntf=false"));
        data.put(6, new Product(6, "áo so mi kẻ t1", 350000, "https://cdn2.yame.vn/pimg/ao-polo-seventy-seven-03-0022722/b1829418-260c-1100-bd5f-001ad4c66874.jpg?w=540&h=756"));
        data.put(7, new Product(7, "Áo khoác nam t1", 250000, "https://cdn2.yame.vn/pimg/ao-thun-co-tron-seventy-seven-03-0022714/d7bfa8bf-7154-0100-d5db-001ad4c59b4b.jpg?w=540&h=756&c=true&ntf=false"));
        data.put(8, new Product(8, "Váy dự tiệc nữ t1", 550000, "https://cdn2.yame.vn/pimg/ao-polo-seventy-seven-03-0022722/b1829418-260c-1100-bd5f-001ad4c66874.jpg?w=540&h=756"));
        data.put(9, new Product(9, "Quần tây nữ t1", 400000, "https://cdn2.yame.vn/pimg/ao-thun-co-tron-seventy-seven-03-0022714/d7bfa8bf-7154-0100-d5db-001ad4c59b4b.jpg?w=540&h=756&c=true&ntf=false"));
        data.put(10, new Product(10, "Áo len nam t1", 350000, "https://cdn2.yame.vn/pimg/ao-thun-co-tron-seventy-seven-03-0022714/d7bfa8bf-7154-0100-d5db-001ad4c59b4b.jpg?w=540&h=756&c=true&ntf=false"));
        data.put(11, new Product(11, "Áo Hoodie t1", 320000, "https://cdn2.yame.vn/pimg/ao-polo-seventy-seven-03-0022722/b1829418-260c-1100-bd5f-001ad4c66874.jpg?w=540&h=756"));
        data.put(12, new Product(12, "Áo short nữ t1", 300000, "https://cdn2.yame.vn/pimg/ao-thun-co-tron-seventy-seven-03-0022714/d7bfa8bf-7154-0100-d5db-001ad4c59b4b.jpg?w=540&h=756&c=true&ntf=false"));
        data.put(13, new Product(13, "Áo thun trơn t1", 300000, "https://cdn2.yame.vn/pimg/ao-polo-seventy-seven-03-0022722/b1829418-260c-1100-bd5f-001ad4c66874.jpg?w=540&h=756"));
        data.put(14, new Product(14, "Áo thun nam t1", 300000, "https://cdn2.yame.vn/pimg/ao-polo-seventy-seven-03-0022722/b1829418-260c-1100-bd5f-001ad4c66874.jpg?w=540&h=756"));
        data.put(15, new Product(15, "Áo thun nam t1", 300000, "https://cdn2.yame.vn/pimg/ao-thun-co-tron-seventy-seven-03-0022714/d7bfa8bf-7154-0100-d5db-001ad4c59b4b.jpg?w=540&h=756&c=true&ntf=false"));
    }

    public List<Product> getAll() {
//        Statement s = DBConnect.get();
//        ResultSet rs = null;
//        ArrayList<Product> re = new ArrayList<>();
//        try {
//            rs = s.executeQuery("select * from products");
//            while(rs.next()) {
//                re.add(new Product(rs.getInt(1),
//                        rs.getString(2) ,
//                        rs.getDouble(3) ,
//                        rs.getString(4)));
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return re;

        Jdbi j = JDBIConnect.get();
        return j.withHandle(handle -> handle.createQuery("select * from products").
                mapToBean(Product.class).list());
    }

    public Product getById(int id) {
//        Statement s = DBConnect.get();
//        ResultSet rs = null;
//        try {
//            rs = s.executeQuery("select * from products where id = " + id);
//
//            if(rs.next()) {
//                return new Product(rs.getInt(1),
//                        rs.getString(2) ,
//                        rs.getDouble(3) ,
//                        rs.getString(4));
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return null;
        Jdbi j = JDBIConnect.get();
        return j.withHandle(handle -> handle.createQuery("select * from products where id = :id").
                bind("id", id)
                .mapToBean(Product.class).findOne().orElse(null));
    }

    public static void main(String[] args) {
        data.forEach((integer, product) -> System.out.println(product));
    }
}
