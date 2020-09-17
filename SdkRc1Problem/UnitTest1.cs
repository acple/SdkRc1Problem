using ClassLibrary1;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SdkRc1Problem
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            var class1 = new Class1();
            class1.Method1();
        }
    }
}
