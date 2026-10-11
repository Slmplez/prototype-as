/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.build.site;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.ProductFile;
import org.eclipse.pde.internal.build.ShapeAdvisor;
import org.eclipse.pde.internal.build.Utils;

public class P2Utils {
    static /* synthetic */ Class class$0;

    public static URL[] readBundlesTxt(String platformHome) {
        BundleHelper bundleHelper = BundleHelper.getDefault();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SimpleConfiguratorManipulator manipulator = (SimpleConfiguratorManipulator)bundleHelper.acquireService(clazz.getName());
        File root = new File(platformHome);
        File bundlesTxt = new File(root, "configuration/org.eclipse.equinox.simpleconfigurator/bundles.info");
        File sourceTxt = new File(root, "configuration/org.eclipse.equinox.source/source.info");
        ArrayList<BundleInfo> infos = new ArrayList<BundleInfo>();
        try {
            if (bundlesTxt.exists()) {
                infos.addAll(Arrays.asList(manipulator.loadConfiguration((InputStream)new FileInputStream(bundlesTxt), root.toURI())));
            }
            if (sourceTxt.exists()) {
                infos.addAll(Arrays.asList(manipulator.loadConfiguration((InputStream)new FileInputStream(sourceTxt), root.toURI())));
            }
        }
        catch (MalformedURLException e) {
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        URL[] bundles = null;
        if (infos.size() > 0) {
            bundles = new URL[infos.size()];
            int i = 0;
            while (i < bundles.length) {
                try {
                    bundles[i] = new File(((BundleInfo)infos.get(i)).getLocation()).toURL();
                }
                catch (MalformedURLException e) {
                    e.printStackTrace();
                }
                ++i;
            }
        } else {
            bundles = new URL[]{};
        }
        return bundles;
    }

    public static File writeBundlesTxt(Collection bundles, File directory, ProductFile productFile, boolean refactoredRuntime) {
        Properties props;
        ArrayList<BundleInfo> bundleInfos = new ArrayList<BundleInfo>(bundles.size());
        ArrayList<BundleInfo> sourceInfos = new ArrayList<BundleInfo>(bundles.size());
        ShapeAdvisor advisor = new ShapeAdvisor();
        int defaultStartLevel = 4;
        Properties properties = props = productFile != null ? productFile.getConfigProperties() : null;
        if (props != null && props.containsKey("osgi.bundles.defaultStartLevel")) {
            try {
                defaultStartLevel = Integer.parseInt(props.getProperty("osgi.bundles.defaultStartLevel"));
            }
            catch (NumberFormatException numberFormatException) {}
        }
        Map userInfos = productFile != null ? productFile.getConfigurationInfo() : null;
        Iterator iterator = bundles.iterator();
        while (iterator.hasNext()) {
            BundleDescription desc = (BundleDescription)iterator.next();
            if (desc == null) continue;
            String modelName = desc.getSymbolicName();
            URI location = null;
            try {
                location = new URI("plugins/" + (String)advisor.getFinalShape(desc)[0]);
            }
            catch (URISyntaxException uRISyntaxException) {
                continue;
            }
            BundleInfo info = new BundleInfo();
            info.setLocation(location);
            info.setSymbolicName(modelName);
            info.setVersion(desc.getVersion().toString());
            if (userInfos != null && userInfos.size() > 0) {
                if (userInfos.containsKey(modelName)) {
                    BundleInfo userInfo = (BundleInfo)userInfos.get(modelName);
                    int start = userInfo.getStartLevel();
                    if (start <= 0) {
                        start = defaultStartLevel;
                    }
                    info.setStartLevel(start);
                    info.setMarkedAsStarted(userInfo.isMarkedAsStarted());
                } else {
                    info.setStartLevel(defaultStartLevel);
                    info.setMarkedAsStarted(false);
                }
            } else if ("org.eclipse.equinox.simpleconfigurator".equals(modelName)) {
                info.setStartLevel(1);
                info.setMarkedAsStarted(true);
            } else if ("org.eclipse.equinox.common".equals(modelName)) {
                info.setStartLevel(2);
                info.setMarkedAsStarted(true);
            } else if ("org.eclipse.osgi".equals(modelName)) {
                info.setStartLevel(-1);
                info.setMarkedAsStarted(true);
            } else if ("org.eclipse.update.configurator".equals(modelName)) {
                info.setStartLevel(3);
                info.setMarkedAsStarted(true);
            } else if ("org.eclipse.core.runtime".equals(modelName)) {
                info.setStartLevel(refactoredRuntime ? 4 : 2);
                info.setMarkedAsStarted(true);
            } else if ("org.eclipse.equinox.ds".equals(modelName)) {
                info.setStartLevel(2);
                info.setMarkedAsStarted(true);
            } else {
                info.setStartLevel(defaultStartLevel);
                info.setMarkedAsStarted(false);
            }
            if (Utils.isSourceBundle(desc)) {
                sourceInfos.add(info);
                continue;
            }
            bundleInfos.add(info);
        }
        File bundlesTxt = new File(directory, "org.eclipse.equinox.simpleconfigurator/bundles.info");
        File srcBundlesTxt = new File(directory, "org.eclipse.equinox.source/source.info");
        File base = directory.getParentFile();
        BundleInfo[] infos = bundleInfos.toArray(new BundleInfo[bundleInfos.size()]);
        BundleInfo[] sources = sourceInfos.toArray(new BundleInfo[sourceInfos.size()]);
        BundleHelper bundleHelper = BundleHelper.getDefault();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SimpleConfiguratorManipulator manipulator = (SimpleConfiguratorManipulator)bundleHelper.acquireService(clazz.getName());
        try {
            manipulator.saveConfiguration(infos, bundlesTxt, base.toURI());
            manipulator.saveConfiguration(sources, srcBundlesTxt, base.toURI());
        }
        catch (IOException iOException) {
            return null;
        }
        return bundlesTxt;
    }
}

