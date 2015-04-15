package test;

/**
 * Created by Olivier on 28/03/2015.
 */

        import static org.junit.Assert.assertEquals;

        import org.junit.Test;
        import org.junit.Ignore;
        import org.junit.runner.RunWith;
        import org.junit.runners.JUnit4;

public class JunitTest {

    @Test
    public void thisAlwaysPasses() {

    }

    @Test
    @Ignore
    public void thisIsIgnored() {
    }
}