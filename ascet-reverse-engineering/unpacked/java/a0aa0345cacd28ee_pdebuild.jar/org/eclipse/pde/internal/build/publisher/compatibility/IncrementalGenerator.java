/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.equinox.p2.publisher.PublisherResult
 */
package org.eclipse.pde.internal.build.publisher.compatibility;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.equinox.p2.publisher.PublisherResult;
import org.eclipse.pde.internal.build.publisher.compatibility.GeneratorApplication;

public class IncrementalGenerator {
    private static String MODE_INCREMENTAL = "incremental";
    private String mode = null;
    private static PublisherResult result = null;
    private static ArrayList configs = null;
    private static ArrayList advice = null;

    public void setMode(String mode) {
        this.mode = mode;
    }

    public void run(GeneratorApplication generator, PublisherInfo provider) throws Exception {
        if (MODE_INCREMENTAL.equals(this.mode)) {
            this.initialize();
            generator.setIncrementalResult((IPublisherResult)result);
        } else if ("final".equals(this.mode) && result != null) {
            generator.setIncrementalResult((IPublisherResult)result);
            if (configs != null) {
                provider.setConfigurations(configs.toArray(new String[configs.size()]));
            }
            if (advice != null) {
                Iterator iterator = advice.iterator();
                while (iterator.hasNext()) {
                    provider.addAdvice((IPublisherAdvice)iterator.next());
                }
            }
        }
        generator.run(provider);
        if (MODE_INCREMENTAL.equals(this.mode)) {
            configs.addAll(Arrays.asList(provider.getConfigurations()));
            advice.addAll(provider.getAdvice());
        } else {
            result = null;
            configs = null;
            advice = null;
        }
    }

    private void initialize() {
        if (result == null) {
            result = new PublisherResult();
        }
        if (configs == null) {
            configs = new ArrayList();
        }
        if (advice == null) {
            advice = new ArrayList();
        }
    }
}

