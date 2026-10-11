/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.emf.ecore.xmi.XMLDefaultHandler;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLLoad;
import org.eclipse.emf.ecore.xmi.XMLParserPool;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XMLParserPoolImpl
implements XMLParserPool {
    private final Map<Map<?, ?>, List<SAXParser>> parserCache = new HashMap();
    private final Map<Map<?, ?>, List<XMLDefaultHandler>> handlersCache;
    private final int size;

    public XMLParserPoolImpl() {
        this(200, false);
    }

    public XMLParserPoolImpl(boolean useHandlerCache) {
        this(200, useHandlerCache);
    }

    public XMLParserPoolImpl(int size, boolean useHandlerCache) {
        this.size = size;
        this.handlersCache = useHandlerCache ? new HashMap() : null;
    }

    @Override
    public synchronized SAXParser get(Map<String, Boolean> features, Map<String, ?> properties, boolean useLexicalHandler) throws ParserConfigurationException, SAXException {
        List<SAXParser> list;
        HashMap<String, Boolean> map = new HashMap<String, Boolean>();
        map.putAll(features);
        map.putAll(properties);
        map.put("USE_LEXICAL_HANDLER", useLexicalHandler ? Boolean.TRUE : Boolean.FALSE);
        if (this.parserCache.size() > this.size) {
            this.parserCache.clear();
        }
        if ((list = this.parserCache.get(map)) != null) {
            int size = list.size();
            if (size > 0) {
                return list.remove(size - 1);
            }
            return this.makeParser(features, properties);
        }
        this.parserCache.put(map, new ArrayList());
        return this.makeParser(features, properties);
    }

    @Override
    public synchronized void release(SAXParser parser, Map<String, Boolean> features, Map<String, ?> properties, boolean useLexicalHandler) {
        HashMap<String, Boolean> map = new HashMap<String, Boolean>();
        map.putAll(features);
        map.putAll(properties);
        map.put("USE_LEXICAL_HANDLER", useLexicalHandler ? Boolean.TRUE : Boolean.FALSE);
        List<SAXParser> list = this.parserCache.get(map);
        if (list.size() < this.size) {
            list.add(parser);
        }
    }

    protected SAXParser makeParser(Map<String, Boolean> features, Map<String, ?> properties) throws ParserConfigurationException, SAXException {
        SAXParserFactory factory = SAXParserFactory.newInstance();
        factory.setValidating(false);
        factory.setNamespaceAware(true);
        SAXParser parser = factory.newSAXParser();
        if (features != null) {
            for (Map.Entry<String, Boolean> entry : features.entrySet()) {
                parser.getXMLReader().setFeature(entry.getKey(), entry.getValue());
            }
        }
        if (properties != null) {
            for (Map.Entry<String, Boolean> entry : properties.entrySet()) {
                parser.getXMLReader().setProperty(entry.getKey(), entry.getValue());
            }
        }
        return parser;
    }

    @Override
    public synchronized XMLDefaultHandler getDefaultHandler(XMLResource resource, XMLLoad xmlLoad, XMLHelper helper, Map<?, ?> options) {
        if (this.handlersCache != null) {
            List<XMLDefaultHandler> list;
            if (this.handlersCache.size() > this.size) {
                this.handlersCache.clear();
            }
            if ((list = this.handlersCache.get(options)) != null) {
                int size = list.size();
                if (size > 0) {
                    XMLDefaultHandler handler = list.remove(size - 1);
                    handler.prepare(resource, helper, options);
                    return handler;
                }
            } else {
                this.handlersCache.put(options, new ArrayList());
            }
        }
        return xmlLoad.createDefaultHandler();
    }

    @Override
    public synchronized void releaseDefaultHandler(XMLDefaultHandler handler, Map<?, ?> options) {
        if (this.handlersCache != null) {
            handler.reset();
            List<XMLDefaultHandler> list = this.handlersCache.get(options);
            if (list == null) {
                list = new ArrayList<XMLDefaultHandler>();
                this.handlersCache.put(options, list);
            } else if (list.size() < this.size) {
                list.add(handler);
            }
        }
    }
}

