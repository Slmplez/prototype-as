/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry
 */
package org.eclipse.pde.internal.build.builder;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.builder.DevClassPathHelper;

public abstract class AbstractBuildScriptGenerator
extends AbstractScriptGenerator {
    protected DevClassPathHelper devEntries;
    protected AssemblyInformation assemblyData;
    protected Properties buildProperties;
    private Set compiledElements;
    private boolean includePlatformIndependent = true;
    private boolean ignoreMissingPropertiesFile = true;
    private static Properties executionEnvironmentMappings = null;

    protected abstract Properties getBuildProperties() throws CoreException;

    public static Properties getExecutionEnvironmentMappings() {
        Properties properties;
        block15: {
            if (executionEnvironmentMappings != null) {
                return executionEnvironmentMappings;
            }
            properties = new Properties();
            InputStream stream = null;
            try {
                try {
                    stream = BundleHelper.getDefault().getBundle().getEntry("data/env.properties").openStream();
                    properties.load(stream);
                }
                catch (IOException iOException) {
                    try {
                        if (stream != null) {
                            stream.close();
                        }
                        break block15;
                    }
                    catch (IOException iOException2) {}
                    break block15;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (stream != null) {
                        stream.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException iOException) {}
        }
        executionEnvironmentMappings = properties;
        return executionEnvironmentMappings;
    }

    public void setDevEntries(String entries) {
        this.devEntries = new DevClassPathHelper(entries);
    }

    public void setDevEntries(DevClassPathHelper entries) {
        this.devEntries = entries;
    }

    public void includePlatformIndependent(boolean value) {
        this.includePlatformIndependent = value;
    }

    public boolean isPlatformIndependentIncluded() {
        return this.includePlatformIndependent;
    }

    public List selectConfigs(IPlatformEntry element) {
        Config config;
        Iterator iter;
        ArrayList result = new ArrayList(AbstractBuildScriptGenerator.getConfigInfos());
        if (!(element.getOS() != null && !element.getOS().equals(Config.ANY) || this.includePlatformIndependent || element.getWS() != null && !element.getWS().equals(Config.ANY) || this.includePlatformIndependent || element.getArch() != null && !element.getArch().equals(Config.ANY) || this.includePlatformIndependent)) {
            result.clear();
            return result;
        }
        if (element.getOS() != null && !element.getOS().equals(Config.ANY)) {
            iter = result.iterator();
            while (iter.hasNext()) {
                config = (Config)iter.next();
                if (this.isMatching(element.getOS(), config.getOs())) continue;
                iter.remove();
            }
        }
        if (element.getWS() != null && !element.getWS().equals(Config.ANY)) {
            iter = result.iterator();
            while (iter.hasNext()) {
                config = (Config)iter.next();
                if (this.isMatching(element.getWS(), config.getWs())) continue;
                iter.remove();
            }
        }
        if (element.getArch() != null && !element.getArch().equals(Config.ANY)) {
            iter = result.iterator();
            while (iter.hasNext()) {
                config = (Config)iter.next();
                if (this.isMatching(element.getArch(), config.getArch())) continue;
                iter.remove();
            }
        }
        return result;
    }

    private boolean isMatching(String candidateValues, String configValue) {
        StringTokenizer stok = new StringTokenizer(candidateValues, ",");
        while (stok.hasMoreTokens()) {
            String token = stok.nextToken().toUpperCase();
            if (!configValue.equalsIgnoreCase(token)) continue;
            return true;
        }
        return false;
    }

    public Set getCompiledElements() {
        if (this.compiledElements == null) {
            this.compiledElements = new HashSet();
        }
        return this.compiledElements;
    }

    public void setCompiledElements(Set compiledElements) {
        this.compiledElements = compiledElements;
    }

    public void setReportResolutionErrors(boolean value) {
        this.reportResolutionErrors = value;
    }

    public boolean isIgnoreMissingPropertiesFile() {
        if (BundleHelper.getDefault().isDebugging()) {
            return false;
        }
        return this.ignoreMissingPropertiesFile;
    }

    public void setIgnoreMissingPropertiesFile(boolean value) {
        this.ignoreMissingPropertiesFile = value;
    }
}

