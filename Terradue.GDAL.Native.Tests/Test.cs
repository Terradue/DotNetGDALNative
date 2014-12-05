using NUnit.Framework;
using System;

namespace Terradue.GDAL.Native.Tests {
    [TestFixture()]
    public class Test {

        [TestFixtureSetUp]
        public void GdalConfig() {

            try {
                GdalConfiguration.ConfigureOgr();
            } catch (Exception e) {
                Console.WriteLine(e.Message);
            }

        }

        [Test()]
        public void TestCase() {
        }
    }
}

