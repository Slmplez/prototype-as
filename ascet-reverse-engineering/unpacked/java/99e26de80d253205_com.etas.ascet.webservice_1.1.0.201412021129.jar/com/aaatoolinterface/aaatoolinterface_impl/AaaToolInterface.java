/*
 * Decompiled with CFR 0.152.
 */
package com.aaatoolinterface.aaatoolinterface_impl;

import com.aaatoolinterface.aaatoolinterface_impl.AaaToolInterfacePortType;
import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;

@WebServiceClient(name="AaaToolInterface", targetNamespace="http://www.AaaToolInterface.com/AaaToolInterface-impl", wsdlLocation="file:/D:/arImporter/Autosar2AscetConverter_630/Autosar2AscetConverter_630/com.etas.ascet.datamodel.amd/resources/wsdl/AaaToolInterface.wsdl")
public class AaaToolInterface
extends Service {
    private static final URL AAATOOLINTERFACE_WSDL_LOCATION;
    private static final WebServiceException AAATOOLINTERFACE_EXCEPTION;
    private static final QName AAATOOLINTERFACE_QNAME;

    static {
        AAATOOLINTERFACE_QNAME = new QName("http://www.AaaToolInterface.com/AaaToolInterface-impl", "AaaToolInterface");
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("file:/D:/arImporter/Autosar2AscetConverter_630/Autosar2AscetConverter_630/com.etas.ascet.datamodel.amd/resources/wsdl/AaaToolInterface.wsdl");
        }
        catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        AAATOOLINTERFACE_WSDL_LOCATION = url;
        AAATOOLINTERFACE_EXCEPTION = e;
    }

    public AaaToolInterface() {
        super(AaaToolInterface.__getWsdlLocation(), AAATOOLINTERFACE_QNAME);
    }

    public AaaToolInterface(WebServiceFeature ... features) {
        super(AaaToolInterface.__getWsdlLocation(), AAATOOLINTERFACE_QNAME, features);
    }

    public AaaToolInterface(URL wsdlLocation) {
        super(wsdlLocation, AAATOOLINTERFACE_QNAME);
    }

    public AaaToolInterface(URL wsdlLocation, WebServiceFeature ... features) {
        super(wsdlLocation, AAATOOLINTERFACE_QNAME, features);
    }

    public AaaToolInterface(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public AaaToolInterface(URL wsdlLocation, QName serviceName, WebServiceFeature ... features) {
        super(wsdlLocation, serviceName, features);
    }

    @WebEndpoint(name="AaaToolInterfacePort")
    public AaaToolInterfacePortType getAaaToolInterfacePort() {
        return super.getPort(new QName("http://www.AaaToolInterface.com/AaaToolInterface-impl", "AaaToolInterfacePort"), AaaToolInterfacePortType.class);
    }

    @WebEndpoint(name="AaaToolInterfacePort")
    public AaaToolInterfacePortType getAaaToolInterfacePort(WebServiceFeature ... features) {
        return super.getPort(new QName("http://www.AaaToolInterface.com/AaaToolInterface-impl", "AaaToolInterfacePort"), AaaToolInterfacePortType.class, features);
    }

    private static URL __getWsdlLocation() {
        if (AAATOOLINTERFACE_EXCEPTION != null) {
            throw AAATOOLINTERFACE_EXCEPTION;
        }
        return AAATOOLINTERFACE_WSDL_LOCATION;
    }
}

