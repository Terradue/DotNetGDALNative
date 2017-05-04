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

            GDALInfo.Main(new string[]{ "L2_of_GUF04_DLR_v01_e010_n45_e015_n40_OGR04.tif"});
        }
    }
}

