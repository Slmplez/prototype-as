/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.xerces.parsers.SAXParser
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.Resource$IOWrappedException
 *  org.eclipse.emf.ecore.xmi.XMIException
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.impl.XMLHelperImpl
 *  org.eclipse.emf.ecore.xmi.impl.XMLString
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 *  org.jdom.Document
 *  org.jdom.Element
 *  org.jdom.JDOMException
 *  org.jdom.input.SAXBuilder
 *  org.jdom.output.Format
 *  org.jdom.output.XMLOutputter
 */
package org.eclipse.sphinx.emf.resource;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.apache.xerces.parsers.SAXParser;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLHelperImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLString;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.resource.ExtendedErrorHandlerWrapper;
import org.eclipse.sphinx.emf.resource.ExtendedSAXXMLHandler;
import org.eclipse.sphinx.emf.resource.IModelConverter;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.helpers.DefaultHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractModelConverter
implements IModelConverter {
    private final Format format = Format.getRawFormat().setLineSeparator(System.getProperty("line.separator"));

    public abstract Object getResourceVersionFromPreferences(IProject var1);

    @Override
    public boolean isLoadConverterFor(XMLResource resource, Map<?, ?> options) {
        if (resource == null) {
            return false;
        }
        IMetaModelDescriptor mmVersionDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor((Resource)resource);
        if (!this.getMetaModelVersionDescriptor().equals(mmVersionDescriptor)) {
            return false;
        }
        Object value = options.get("RESOURCE_VERSION_DESCRIPTOR");
        if (value instanceof IMetaModelDescriptor) {
            return this.getResourceVersionDescriptor().equals(value);
        }
        String resourceNamespace = EcoreResourceUtil.readModelNamespace((Resource)resource);
        boolean matching = false;
        if (resourceNamespace != null && !(matching = resourceNamespace.equals(this.getResourceVersionDescriptor().getNamespace()))) {
            matching = this.getResourceVersionDescriptor().matchesEPackageNsURIPattern(resourceNamespace);
        }
        return matching;
    }

    @Override
    public boolean isSaveConverterFor(XMLResource resource, Map<?, ?> options) {
        Object value;
        if (resource == null) {
            return false;
        }
        IMetaModelDescriptor mmVersionDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor((Resource)resource);
        if (!this.getMetaModelVersionDescriptor().equals(mmVersionDescriptor)) {
            return false;
        }
        IFile file = EcorePlatformUtil.getFile((Resource)resource);
        if (file != null && (value = this.getResourceVersionFromPreferences(file.getProject())) instanceof IMetaModelDescriptor) {
            return this.getResourceVersionDescriptor().equals(value);
        }
        value = options.get("RESOURCE_VERSION_DESCRIPTOR");
        return this.getResourceVersionDescriptor().equals(value);
    }

    protected XMIException toXMIException(Resource resource, Exception ex) {
        String location = resource.getURI() == null ? null : resource.getURI().toString();
        return new XMIException(ex, location, 1, 1);
    }

    @Override
    public InputSource convertLoad(XMLResource resource, InputStream inputStream, Map<?, ?> options) throws IOException {
        try {
            InputStream converted = this.doConvertLoad(resource, inputStream, options);
            resource.getDefaultSaveOptions().put("RESOURCE_VERSION_DESCRIPTOR", this.getResourceVersionDescriptor());
            return new InputSource(converted);
        }
        catch (JDOMException ex) {
            throw new Resource.IOWrappedException((Exception)((Object)ex));
        }
    }

    protected InputStream doConvertLoad(XMLResource resource, InputStream inputStream, Map<?, ?> options) throws IOException, JDOMException {
        Map parserProperties;
        Map parserFeatures;
        SAXBuilder builder = this.makeBuilder();
        DefaultHandler handler = this.makeDefaultHandler(resource, options);
        InputSource inputSource = new InputSource(inputStream);
        if (resource.getURI() != null) {
            String resourceURI = resource.getURI().toString();
            inputSource.setPublicId(resourceURI);
            inputSource.setSystemId(resourceURI);
        }
        if ((parserFeatures = (Map)options.get("PARSER_FEATURES")) != null) {
            for (String feature : parserFeatures.keySet()) {
                builder.setFeature(feature, ((Boolean)parserFeatures.get(feature)).booleanValue());
            }
        }
        if ((parserProperties = (Map)options.get("PARSER_PROPERTIES")) != null) {
            for (String property : parserProperties.keySet()) {
                builder.setProperty(property, parserProperties.get(property));
            }
        }
        if (Boolean.TRUE.equals(options.get("ENABLE_SCHEMA_VALIDATION"))) {
            builder.setValidation(true);
            builder.setFeature("http://apache.org/xml/features/validation/schema", true);
            builder.setProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage", (Object)"http://www.w3.org/2001/XMLSchema");
            builder.setEntityResolver((EntityResolver)handler);
        }
        builder.setProperty("http://apache.org/xml/properties/internal/error-handler", (Object)new ExtendedErrorHandlerWrapper());
        builder.setErrorHandler((ErrorHandler)handler);
        final Document document = builder.build(inputSource);
        ArrayList<Element> elementsToConvert = new ArrayList<Element>();
        Iterator iterator = document.getRootElement().getDescendants();
        while (iterator.hasNext()) {
            Iterator next = iterator.next();
            if (!(next instanceof Element)) continue;
            Element element = (Element)next;
            elementsToConvert.add(element);
        }
        for (Element element : elementsToConvert) {
            try {
                this.convertLoadElement(element, options);
            }
            catch (Exception ex) {
                resource.getErrors().add((Object)this.toXMIException((Resource)resource, ex));
            }
        }
        PipedInputStream pipedInputStream = new PipedInputStream();
        final PipedOutputStream pipedOutputStream = new PipedOutputStream(pipedInputStream);
        final XMLOutputter out = new XMLOutputter(this.format);
        Thread thread = new Thread(new Runnable(){

            public void run() {
                try {
                    try {
                        out.output(document, (OutputStream)pipedOutputStream);
                    }
                    catch (IOException ex) {
                        PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                        try {
                            pipedOutputStream.close();
                        }
                        catch (IOException ex2) {
                            PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)ex2);
                        }
                    }
                }
                finally {
                    try {
                        pipedOutputStream.close();
                    }
                    catch (IOException ex) {
                        PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)ex);
                    }
                }
            }
        }, "Converting " + resource.getURI().toString());
        thread.start();
        return pipedInputStream;
    }

    protected SAXBuilder makeBuilder() {
        return new SAXBuilder(SAXParser.class.getName());
    }

    protected DefaultHandler makeDefaultHandler(XMLResource resource, Map<?, ?> options) {
        return new ExtendedSAXXMLHandler(resource, (XMLHelper)new XMLHelperImpl(), options);
    }

    protected abstract void convertLoadElement(Element var1, Map<?, ?> var2);

    @Override
    public void convertSave(final XMLString xml, final int flushThreshold, URI uri, OutputStream outputStream, final String encoding, final XMLHelper helper, Map<?, ?> options) throws IOException {
        try {
            PipedInputStream pipedInputStream = new PipedInputStream();
            final PipedOutputStream pipedOutputStream = new PipedOutputStream(pipedInputStream);
            Thread thread = new Thread(new Runnable(){

                public void run() {
                    block12: {
                        try {
                            try {
                                if ("US-ASCII".equals(encoding) || "ASCII".equals(encoding)) {
                                    xml.writeAscii((OutputStream)pipedOutputStream, flushThreshold);
                                    pipedOutputStream.flush();
                                    break block12;
                                }
                                OutputStreamWriter outputStreamWriter = new OutputStreamWriter((OutputStream)pipedOutputStream, helper.getJavaEncoding(encoding));
                                xml.write((Writer)outputStreamWriter, flushThreshold);
                                outputStreamWriter.flush();
                            }
                            catch (IOException ex) {
                                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                                try {
                                    pipedOutputStream.close();
                                }
                                catch (IOException ex2) {
                                    PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)ex2);
                                }
                            }
                        }
                        finally {
                            try {
                                pipedOutputStream.close();
                            }
                            catch (IOException ex) {
                                PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)ex);
                            }
                        }
                    }
                }
            }, "Converting " + uri.toString());
            thread.start();
            Document document = new SAXBuilder().build((InputStream)pipedInputStream);
            ArrayList<Element> elementsToConvert = new ArrayList<Element>();
            Iterator iterator = document.getRootElement().getDescendants();
            while (iterator.hasNext()) {
                Object next = iterator.next();
                if (!(next instanceof Element)) continue;
                Element element = (Element)next;
                elementsToConvert.add(element);
            }
            for (Element element : elementsToConvert) {
                try {
                    this.convertSaveElement(element, options);
                }
                catch (Exception ex) {
                    PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)ex);
                }
            }
            new XMLOutputter(this.format).output(document, outputStream);
        }
        catch (Exception ex) {
            throw new Resource.IOWrappedException(ex);
        }
    }

    protected abstract void convertSaveElement(Element var1, Map<?, ?> var2);

    @Override
    public void addExtraAttributesToSavedRootElement(XMLString rootElement, Map<?, ?> options) {
    }

    @Override
    public void dispose() {
    }
}

