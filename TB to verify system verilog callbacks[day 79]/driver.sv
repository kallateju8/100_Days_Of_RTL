typedef enum{GOOD,BAD_1,BAD_2,BAD_3}pkt_type;

class driver;
  pkt_type pkt;
  
  task pkt_sender;
    std::randomize(pkt) with {pkt==GOOD;};
    modify_pkt;
  endtask
  
  virtual task modify_pkt;
  endtask
endclass

class err_driver extends driver;
  task modify_pkt;
    $display("injecting error pkt");
    std::randomize(pkt) with {pkt inside {BAD_1,BAD_2,BAD_3};};
  endtask
endclass
