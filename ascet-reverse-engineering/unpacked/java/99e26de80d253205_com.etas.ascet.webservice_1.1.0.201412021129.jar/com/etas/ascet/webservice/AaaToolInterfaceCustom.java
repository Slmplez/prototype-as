/*
 * Decompiled with CFR 0.152.
 */
package com.etas.ascet.webservice;

import com.aaatoolinterface.aaatoolinterface_impl.AaaToolInterface;
import com.aaatoolinterface.aaatoolinterface_impl.AaaToolInterfacePortType;
import com.etas.ascet.webservice.AscetWsdlLocator;
import javax.xml.namespace.QName;
import javax.xml.ws.BindingProvider;
import javax.xml.ws.WebEndpoint;

public class AaaToolInterfaceCustom
extends AaaToolInterface {
    private static final QName AAATOOLINTERFACE_QNAME = new QName("http://www.AaaToolInterface.com/AaaToolInterface-impl", "AaaToolInterface");
    private final int port;

    public AaaToolInterfaceCustom(int port) {
        super(AscetWsdlLocator.getWsdlLocationUrl("AaaToolInterface"), AAATOOLINTERFACE_QNAME);
        this.port = port;
    }

    public AaaToolInterfaceCustom() {
        this(32510);
    }

    @Override
    @WebEndpoint(name="AaaToolInterfacePort")
    public AaaToolInterfacePortType getAaaToolInterfacePort() {
        AaaToolInterfacePortType aaaToolInterfacePort = super.getAaaToolInterfacePort();
        String newAndPointAddress = String.format("http://localhost:%d/SstWSServlet", this.port);
        ((BindingProvider)((Object)aaaToolInterfacePort)).getRequestContext().put("javax.xml.ws.service.endpoint.address", newAndPointAddress);
        return aaaToolInterfacePort;
    }

    public String databasePath() {
        AaaToolInterfacePortType tool = this.getAaaToolInterfacePort();
        return tool.databasePath();
    }
}

