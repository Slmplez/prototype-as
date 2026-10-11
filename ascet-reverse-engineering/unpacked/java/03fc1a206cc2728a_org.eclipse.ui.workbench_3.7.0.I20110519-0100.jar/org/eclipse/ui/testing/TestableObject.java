/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.ui.testing;

import org.eclipse.core.runtime.Assert;
import org.eclipse.ui.testing.ITestHarness;

public class TestableObject {
    private ITestHarness testHarness;

    public ITestHarness getTestHarness() {
        return this.testHarness;
    }

    public void setTestHarness(ITestHarness testHarness) {
        Assert.isNotNull((Object)testHarness);
        this.testHarness = testHarness;
    }

    public void runTest(Runnable testRunnable) {
        testRunnable.run();
    }

    public void testingStarting() {
    }

    public void testingFinished() {
    }
}

