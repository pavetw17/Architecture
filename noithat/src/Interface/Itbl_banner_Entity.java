package Interface;

import java.util.ArrayList;

public interface Itbl_banner_Entity {
	ArrayList<String> Home_getContentMain_accordingToProduct(int id_home, int limit);

	ArrayList<String> Home_getContent_accordingProductDetail(int id_detail);
}
