/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.core.plugin.IPluginModelBase
 *  org.eclipse.pde.internal.core.PDECore
 *  org.eclipse.pde.internal.core.PDECoreMessages
 *  org.eclipse.pde.internal.core.XMLDefaultHandler
 *  org.eclipse.pde.internal.core.builders.SchemaTransformer
 *  org.eclipse.pde.internal.core.ischema.ISchema
 *  org.eclipse.pde.internal.core.plugin.ExternalFragmentModel
 *  org.eclipse.pde.internal.core.plugin.ExternalPluginModel
 *  org.eclipse.pde.internal.core.schema.Schema
 *  org.eclipse.pde.internal.core.schema.SchemaDescriptor
 *  org.eclipse.pde.internal.core.util.HeaderMap
 *  org.eclipse.pde.internal.core.util.SAXParserWrapper
 */
package org.eclipse.pde.internal.core.ant;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;
import java.util.Map;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.XMLDefaultHandler;
import org.eclipse.pde.internal.core.builders.SchemaTransformer;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.plugin.ExternalFragmentModel;
import org.eclipse.pde.internal.core.plugin.ExternalPluginModel;
import org.eclipse.pde.internal.core.schema.Schema;
import org.eclipse.pde.internal.core.schema.SchemaDescriptor;
import org.eclipse.pde.internal.core.util.HeaderMap;
import org.eclipse.pde.internal.core.util.SAXParserWrapper;
import org.xml.sax.helpers.DefaultHandler;

public class ConvertSchemaToHTML
extends Task {
    private SchemaTransformer fTransformer = new SchemaTransformer();
    private String manifest;
    private String destination;
    private URL cssURL;

    /*
     * Unable to fully structure code
     */
    public void execute() throws BuildException {
        if (!this.validateDestination()) {
            return;
        }
        model = this.readManifestFile();
        if (model == null) {
            return;
        }
        pluginID = model.getPluginBase().getId();
        if (pluginID == null) {
            pluginID = this.getPluginID();
        }
        extPoints = model.getPluginBase().getExtensionPoints();
        i = 0;
        while (i < extPoints.length) {
            schemaLocation = extPoints[i].getSchema();
            out = null;
            if (schemaLocation != null && !schemaLocation.equals("")) {
                block18: {
                    block19: {
                        schema = null;
                        parser = null;
                        parser = new SAXParserWrapper();
                        schemaFile = new File(model.getInstallLocation(), schemaLocation);
                        handler = new XMLDefaultHandler();
                        parser.parse(schemaFile, (DefaultHandler)handler);
                        url = schemaFile.toURL();
                        desc = new SchemaDescriptor(extPoints[i].getFullId(), url);
                        schema = (Schema)desc.getSchema(false);
                        v0 = directory = new Path(this.destination).isAbsolute() != false ? new File(this.destination) : new File(this.getProject().getBaseDir(), this.destination);
                        if (directory.exists() && directory.isDirectory() || directory.mkdirs()) break block18;
                        schema.dispose();
                        if (out != null) {
                            out.close();
                        }
                        if (schema == null) break block19;
                        schema.dispose();
                    }
                    return;
                }
                try {
                    try {
                        id = extPoints[i].getId();
                        if (id.indexOf(46) == -1) {
                            id = String.valueOf(pluginID) + "." + id;
                        }
                        file = new File(directory, String.valueOf(id.replace('.', '_')) + ".html");
                        out = new PrintWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(file), "UTF-8"), true);
                        this.fTransformer.transform((ISchema)schema, out, this.cssURL, (byte)1);
                    }
                    catch (Exception e) {
                        if (e.getMessage() != null) {
                            System.out.println(e.getMessage());
                        }
                        if (out != null) {
                            out.close();
                        }
                        if (schema == null) ** GOTO lbl63
                        schema.dispose();
                    }
                }
                catch (Throwable var16_17) {
                    if (out != null) {
                        out.close();
                    }
                    if (schema != null) {
                        schema.dispose();
                    }
                    throw var16_17;
                }
                if (out != null) {
                    out.close();
                }
                if (schema != null) {
                    schema.dispose();
                }
            }
lbl63:
            // 7 sources

            ++i;
        }
    }

    private String getPluginID() {
        File file = new Path(this.manifest).isAbsolute() ? new File(this.manifest) : new File(this.getProject().getBaseDir(), this.manifest);
        File OSGiFile = new File(file.getParentFile(), "META-INF/MANIFEST.MF");
        if (OSGiFile.exists()) {
            String value;
            block5: {
                Map headers = ManifestElement.parseBundleManifest((InputStream)new FileInputStream(OSGiFile), (Map)new HeaderMap());
                value = headers.get("Bundle-SymbolicName").toString();
                if (value != null) break block5;
                return null;
            }
            try {
                ManifestElement[] elements = ManifestElement.parseHeader((String)"Bundle-SymbolicName", (String)value);
                if (elements.length > 0) {
                    return elements[0].getValue();
                }
            }
            catch (Exception e1) {
                System.out.print(e1.getMessage());
            }
        }
        return null;
    }

    public void setManifest(String manifest) {
        this.manifest = manifest;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public URL getCSSURL() {
        return this.cssURL;
    }

    public void setCSSURL(String url) {
        try {
            this.cssURL = new URL(url);
        }
        catch (MalformedURLException e) {
            PDECore.logException((Throwable)e);
        }
    }

    public void setCSSURL(URL url) {
        this.cssURL = url;
    }

    private IPluginModelBase readManifestFile() {
        ExternalFragmentModel model;
        block10: {
            BufferedInputStream stream;
            File file;
            block9: {
                if (this.manifest == null) {
                    System.out.println(NLS.bind((String)PDECoreMessages.Builders_Convert_missingAttribute, (Object)"manifest"));
                    return null;
                }
                file = new Path(this.manifest).isAbsolute() ? new File(this.manifest) : new File(this.getProject().getBaseDir(), this.manifest);
                stream = null;
                try {
                    stream = new BufferedInputStream(new FileInputStream(file));
                }
                catch (Exception e) {
                    if (e.getMessage() != null) {
                        System.out.println(e.getMessage());
                    }
                    return null;
                }
                model = null;
                if (file.getName().toLowerCase(Locale.ENGLISH).equals("fragment.xml")) {
                    model = new ExternalFragmentModel();
                    break block9;
                }
                if (file.getName().toLowerCase(Locale.ENGLISH).equals("plugin.xml")) {
                    model = new ExternalPluginModel();
                    break block9;
                }
                System.out.println(NLS.bind((String)PDECoreMessages.Builders_Convert_illegalValue, (Object)"manifest"));
                return null;
            }
            try {
                String parentPath = file.getParentFile().getAbsolutePath();
                model.setInstallLocation(parentPath);
                model.load((InputStream)stream, false);
                ((InputStream)stream).close();
            }
            catch (Exception e) {
                if (e.getMessage() == null) break block10;
                System.out.println(e.getMessage());
            }
        }
        return model;
    }

    private boolean validateDestination() {
        boolean valid = true;
        if (this.destination == null) {
            System.out.println(NLS.bind((String)PDECoreMessages.Builders_Convert_missingAttribute, (Object)"destination"));
            valid = false;
        } else if (!new Path(this.destination).isValidPath(this.destination)) {
            System.out.println(NLS.bind((String)PDECoreMessages.Builders_Convert_illegalValue, (Object)"destination"));
            valid = false;
        }
        return valid;
    }
}

