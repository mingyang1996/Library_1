package lianbiao;
import dao.ItemsDAO;
import java.util.ArrayList;
import entity.Items ;
import entity.Reader;
import java.util.* ;
import java.text.*;

/**
 * 自定义链表设计
 * 
 * @author zjn
 *
 */
public class MyLink {
    Node head = null; // 头节点

    /**
     * 链表中的节点，data代表节点的值，next是指向下一个节点的引用
     * 
     * @author zjn
     *
     */
    class Node {
        Node next = null;// 节点的引用，指向下一个节点
        int data;// 节点的对象，即内容

        public Node(int data) {
            this.data = data;
        }
    }

    /**
     * 向链表中插入数据
     * 
     * @param d
     */
    public void addNode(int d) {
        Node newNode = new Node(d);// 实例化一个节点
        if (head == null) {
            head = newNode;
            return;
        }
        Node tmp = head;
        while (tmp.next != null) {
            tmp = tmp.next;
        }
        tmp.next = newNode; //将新加入的元素存入空指针；
    }

    /**
     * 
     * @param index:删除第index个节点
     * @return
     */
    public boolean deleteNode(int index) {
        if (index < 1 || index > length()) {
            return false;
        }
        if (index == 1) {
            head = head.next;
            return true;
        }
        int i = 1;
        Node preNode = head; //当前节点
        Node curNode = preNode.next;   //下一个节点
        while (curNode != null) {
            if (i == index) {
                preNode.next = curNode.next;  //当前节点的引用付给前一节点的引用
                return true;
            }
            preNode = curNode; //下一节点对象
            curNode = curNode.next;  //引用
            i++;
        }
        return false;
    }

    /**
     * 
     * @return 返回节点长度
     */
    public int length() {
        int length = 0;
        Node tmp = head;
        while (tmp != null) {
            length++;
            tmp = tmp.next;
        }
        return length;
    }

    /**
     * 在不知道头指针的情况下删除指定节点
     * 
     * @param n
     * @return
     */
    public boolean deleteNode11(Node n) {
        if (n == null || n.next == null)
            return false;
        int tmp = n.data;
        n.data = n.next.data;
        n.next.data = tmp;
        n.next = n.next.next;
        System.out.println("删除成功！");
        return true;
    }

    public void printList() {
        Node tmp = head;
        while (tmp != null) {
            System.out.println(tmp.data);
            tmp = tmp.next;
        }
    }
    
    /**
     * 排序
     * 
     * @return
     */
    public Node orderList() {
        Node nextNode = null;
        int tmp = 0;
        Node curNode = head;
        while (curNode.next != null) {
            nextNode = curNode.next;
            while (nextNode != null) {
                if (curNode.data > nextNode.data) {
                    tmp = curNode.data;
                    curNode.data = nextNode.data;
                    nextNode.data = tmp;
                }
                nextNode = nextNode.next;
            }
            curNode = curNode.next;
        }
        return head;
    }
    
    //查找节点
    public int getNode(int index) {

       /* if (index < 1 || index > length()) {
            return false;
        }*/
        /*if (index == 1) {
            head = head.next;
            return true;
        }*/
        int i = 1;
        if(index==0)
        	return head.data;
        
        Node preNode = head; //前一个节点                              从第二个节点开始遍历
        Node curNode = preNode.next;   //当前节点
        while (curNode != null) {
            if (i == index) {
                //preNode.next = curNode.next;  //当前节点的引用付给前一节点的引用
                return curNode.data;
            }
            preNode = curNode; //下一节点对象
            curNode = curNode.next;  //引用
            i++;
        }
        return 0;
    }

    

//程序主入口    
    public static void main(String[] args) {
        MyLink linklist = new MyLink();
        
        ItemsDAO itemsDao = new ItemsDAO();
		//Items item = itemDao.getreaderinfo();
		ArrayList<Reader> list = itemsDao.getreaderinfo();
		if (list != null && list.size() > 0) 
		{
			for (int i = 0; i < list.size(); i++) 
			{
				Reader item = list.get(i);
				linklist.addNode(item.getIdNumber());
				//System.out.println("linkLength:" + linklist.length());
				//System.out.println("head.data:" + linklist.head.data);
				//linklist.deleteNode(4);
				//System.out.println("After deleteNode(4):");
				//linklist.printList();
    }
			System.out.println("linkLength:" + linklist.length());
			linklist.printList();
			System.out.println();
			linklist.orderList();
			linklist.printList();
			//linklist.deleteNode(4);
			//linklist.printList();
      }
    }
}