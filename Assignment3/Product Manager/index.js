class Product{
    constructor(id, name, address, cost,quality){
        this.pId = id;
        this.pName = name;
        this.pAddress = address;
        this.pCost =cost;
        this.pQuality=quality;
    }
  }

  class pRepo{
     
      records = [];

      addProduct(pro){
        this.records.push(pro)
      }

      getAllProduct = () => this.records;

      getProduct(id){
          for(const pro of this.records){
              if(pro.pId == id)
                return pro;
          }
          throw `Product by ID ${id} not found`;
      }

      updateProduct(pro){
          for(const pRec of this.records){
              if(pro.pId == pRec.pId){
                 pRec.pAddress = pro.pAddress; 
                 pRec.pCost = pro.pCost; 
                 pRec.pName = pro.pName;
                 pRec.pQuality=pro.pQuality;
                 return; 
              }
          }
          throw "Product not found to update"
      }

  }

  /////////////////////Testing part//////////////////
  let instance = new pRepo();
//   instance.addProduct(new Product(1, "TestName1", "TestAddress1", 4500));
//   instance.addProduct(new Product(124, "TestName2", "TestAddress2", 4500));
//   instance.addProduct(new Product(125, "TestName3", "TestAddress3", 4500));
//   instance.addProduct(new Product(126, "TestName4", "TestAddress4", 4500));

  const data = instance.getAllProduct()
  for(const pro of data) console.log(pro.pName);