<project xmlns="com.autoesl.autopilot.project" name="cmp_max" top="cmp_max">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../output_gold.dat" sc="0" tb="1" cflags=" "/>
        <file name="../cmp_max_test.c" sc="0" tb="1" cflags=" "/>
        <file name="cmp_max/cmp_max.c" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

