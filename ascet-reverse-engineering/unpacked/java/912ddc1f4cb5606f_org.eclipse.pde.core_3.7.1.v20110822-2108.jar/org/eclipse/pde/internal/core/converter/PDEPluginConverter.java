/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.service.pluginconversion.PluginConversionException
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.core.converter;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.service.pluginconversion.PluginConversionException;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.converter.PluginConverter;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.osgi.framework.BundleException;

public class PDEPluginConverter {
    public static void convertToOSGIFormat(IProject project, String target, Dictionary dictionary, IProgressMonitor monitor) throws CoreException {
        PDEPluginConverter.convertToOSGIFormat(project, target, dictionary, null, monitor);
    }

    public static void convertToOSGIFormat(IProject project, String target, Dictionary dictionary, HashMap newProps, IProgressMonitor monitor) throws CoreException {
        try {
            try {
                File outputFile = new File(PDEProject.getManifest(project).getLocation().toOSString());
                File inputFile = new File(project.getLocation().toOSString());
                PluginConverter converter = PluginConverter.getDefault();
                converter.convertManifest(inputFile, outputFile, false, target, true, dictionary);
                if (newProps != null && newProps.size() > 0) {
                    converter.writeManifest(outputFile, PDEPluginConverter.getProperties(outputFile, newProps), false);
                }
                project.refreshLocal(2, null);
            }
            catch (PluginConversionException pluginConversionException) {
                monitor.done();
            }
        }
        finally {
            monitor.done();
        }
    }

    private static Map getProperties(File file, HashMap newProps) {
        try {
            Map prop = ManifestElement.parseBundleManifest((InputStream)new FileInputStream(file), null);
            if (newProps != null && newProps.size() > 0) {
                Iterator iter = newProps.keySet().iterator();
                while (iter.hasNext()) {
                    String key = iter.next().toString();
                    prop.put(key, newProps.get(key));
                }
            }
            return prop;
        }
        catch (FileNotFoundException fileNotFoundException) {
        }
        catch (BundleException bundleException) {
        }
        catch (IOException iOException) {}
        return new HashMap();
    }
}

