/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.build;

import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;

public class ShapeAdvisor
implements IPDEBuildConstants {
    public static final String UPDATEJAR = "updateJar";
    public static final String FLAT = "flat";
    public static final String FOLDER = "folder";
    public static final String FILE = "file";
    private Properties pluginsPostProcessingSteps;
    private Properties featuresPostProcessingSteps;
    private boolean forceUpdateJarFormat = false;

    public ShapeAdvisor() {
        try {
            this.pluginsPostProcessingSteps = AbstractScriptGenerator.readProperties(AbstractScriptGenerator.getWorkingDirectory(), "plugins.postProcessingSteps.properties", 1);
            this.featuresPostProcessingSteps = AbstractScriptGenerator.readProperties(AbstractScriptGenerator.getWorkingDirectory(), "features.postProcessingSteps.properties", 1);
        }
        catch (CoreException coreException) {}
    }

    public void setForceUpdateJars(boolean force) {
        this.forceUpdateJarFormat = force;
    }

    public Object[] getFinalShape(BundleDescription bundle) {
        String style = this.getUnpackClause(bundle) ? FLAT : UPDATEJAR;
        return this.getFinalShape(bundle.getSymbolicName(), bundle.getVersion().toString(), style, true);
    }

    public Object[] getFinalShape(BuildTimeFeature feature) {
        return this.getFinalShape(feature.getId(), feature.getVersion(), FLAT, true);
    }

    private Object[] getFinalShape(String name, String version, String initialShape, boolean bundle) {
        String style = initialShape;
        if (FLAT.equalsIgnoreCase(style = this.getShapeOverride(name, bundle, style))) {
            return new Object[]{String.valueOf(name) + '_' + version, FOLDER};
        }
        if (UPDATEJAR.equalsIgnoreCase(style)) {
            return new Object[]{String.valueOf(name) + '_' + version + ".jar", FILE};
        }
        return new Object[]{String.valueOf(name) + '_' + version, FOLDER};
    }

    private String getShapeOverride(String name, boolean bundle, String initialStyle) {
        Properties currentProperties;
        String result = initialStyle;
        Properties properties = currentProperties = bundle ? this.pluginsPostProcessingSteps : this.featuresPostProcessingSteps;
        if (currentProperties.size() > 0) {
            String styleFromFile = currentProperties.getProperty(name);
            if (styleFromFile == null) {
                styleFromFile = currentProperties.getProperty("*");
            }
            result = styleFromFile;
        }
        if (this.forceUpdateJarFormat) {
            result = UPDATEJAR;
        }
        return result;
    }

    private boolean getUnpackClause(BundleDescription bundle) {
        Properties properties = (Properties)bundle.getUserObject();
        if (properties != null) {
            String shape;
            Set entries = (Set)properties.get("pluginEntry");
            if (entries != null && entries.size() > 0) {
                Boolean result = null;
                boolean contradiction = false;
                Iterator iterator = entries.iterator();
                while (iterator.hasNext()) {
                    FeatureEntry entry = (FeatureEntry)iterator.next();
                    if (!entry.unpackSet()) continue;
                    if (result == null) {
                        result = entry.isUnpack();
                        continue;
                    }
                    if (result.booleanValue() == entry.isUnpack()) continue;
                    contradiction = true;
                    break;
                }
                if (result != null && !contradiction) {
                    return result;
                }
            }
            if ((shape = properties.getProperty("Eclipse-BundleShape")) != null) {
                return shape.equalsIgnoreCase("dir");
            }
        }
        return true;
    }
}

