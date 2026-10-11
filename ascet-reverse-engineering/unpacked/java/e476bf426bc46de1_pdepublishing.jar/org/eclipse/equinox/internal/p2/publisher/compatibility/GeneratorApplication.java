/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.app.IApplication
 *  org.eclipse.equinox.app.IApplicationContext
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.internal.p2.publisher.Activator
 *  org.osgi.framework.BundleContext
 *  org.osgi.service.application.ApplicationDescriptor
 *  org.osgi.service.application.ApplicationException
 *  org.osgi.service.application.ApplicationHandle
 */
package org.eclipse.equinox.internal.p2.publisher.compatibility;

import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.publisher.Activator;
import org.osgi.framework.BundleContext;
import org.osgi.service.application.ApplicationDescriptor;
import org.osgi.service.application.ApplicationException;
import org.osgi.service.application.ApplicationHandle;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GeneratorApplication
implements IApplication {
    protected static final String APP_ID = "app.id";
    public static final String UPDATE_SITE_APPLICATION = "org.eclipse.equinox.p2.publisher.UpdateSitePublisher";
    public static final String INSTALL_APPLICATION = "org.eclipse.equinox.p2.publisher.InstallPublisher";
    public static final String FEATURES_BUNDLES_APPLICATION = "org.eclipse.equinox.p2.publisher.FeaturesAndBundlesPublisher";
    static /* synthetic */ Class class$0;

    public Object start(IApplicationContext context) throws Exception {
        return this.run((String[])context.getArguments().get("application.args"));
    }

    public void stop() {
    }

    public Object run(String[] arguments) {
        Map<String, Object> argumentMap = this.parseArguments(arguments);
        return this.launchApplication(argumentMap);
    }

    protected Object launchApplication(Map<String, Object> applicationMap) {
        String applicationId = (String)applicationMap.get(APP_ID);
        String filter = new StringBuffer("(service.pid=").append(applicationId).append(")").toString();
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.service.application.ApplicationDescriptor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ApplicationDescriptor descriptor = (ApplicationDescriptor)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName(), (String)filter);
        try {
            ApplicationHandle handle = descriptor.launch(applicationMap);
            return handle.getExitValue(0L);
        }
        catch (ApplicationException e) {
            e.printStackTrace();
        }
        catch (InterruptedException e) {
            e.printStackTrace();
        }
        return null;
    }

    private Map<String, Object> parseArguments(String[] arguments) {
        File base;
        File configuration;
        HashMap<String, Object> applicationMap = new HashMap<String, Object>();
        HashMap<String, String> args = new HashMap<String, String>(arguments.length);
        int i = 0;
        while (i < arguments.length) {
            if (i == arguments.length - 1 || arguments[i + 1].startsWith("-")) {
                args.put(arguments[i], null);
            } else {
                args.put(arguments[i], arguments[++i]);
            }
            ++i;
        }
        if (args.containsKey("-ar")) {
            args.put("-artifactRepository", (String)args.remove("-ar"));
        }
        if (args.containsKey("-mr")) {
            args.put("-metadataRepository", (String)args.remove("-mr"));
        }
        if (args.containsKey("-pa")) {
            args.put("-publishArtifacts", (String)args.remove("-pa"));
        }
        if (args.containsKey("-par")) {
            args.put("-publishArtifactRepository", (String)args.remove("-par"));
        }
        if (args.containsKey("-root")) {
            String rootId = (String)args.remove("-root");
            args.put("-iu", rootId);
            args.put("-id", rootId);
        }
        if (args.containsKey("-rootVersion")) {
            args.put("-version", (String)args.remove("-rootVersion"));
        }
        String source = null;
        if (args.containsKey("-updateSite")) {
            source = (String)args.remove("-updateSite");
        }
        if (args.containsKey("-inplace")) {
            source = (String)args.remove("-inplace");
        }
        if (source != null) {
            args.put("-source", source);
            args.put("-append", null);
            String repoLocation = URIUtil.toUnencodedString((URI)new File(source).toURI());
            if (!args.containsKey("-artifactRepository")) {
                args.put("-artifactRepository", repoLocation);
            }
            if (!args.containsKey("-metadataRepository")) {
                args.put("-metadataRepository", repoLocation);
            }
        }
        if ((configuration = new File(base = new File((String)args.get("-source")), "configuration")).exists()) {
            applicationMap.put(APP_ID, INSTALL_APPLICATION);
        } else if (args.containsKey("-site")) {
            applicationMap.put(APP_ID, UPDATE_SITE_APPLICATION);
        } else if (args.containsKey("-config")) {
            applicationMap.put(APP_ID, INSTALL_APPLICATION);
        } else {
            applicationMap.put(APP_ID, FEATURES_BUNDLES_APPLICATION);
        }
        applicationMap.put("application.args", this.flattenMap(args));
        return applicationMap;
    }

    private String[] flattenMap(Map<String, String> map) {
        ArrayList<String> list = new ArrayList<String>(map.size());
        for (String key : map.keySet()) {
            String value = map.get(key);
            list.add(key);
            if (value == null) continue;
            list.add(value);
        }
        return list.toArray(new String[list.size()]);
    }
}

