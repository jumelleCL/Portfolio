<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="/horariParc.xml" version="1.0">
    <xsl:template match="/">
        <!-- Esto fue probado en el transformador de la pagiina http://xsltransform.net con el engine Xalan 2.7.1 y funcionara correctamente
también fue probado y funcionara en el transformador de https://www.w3schools.com/default.asp de forma correcta, pero en otros
tranformadores es posible que no se vera de la manera que se pide. -->
        <html>
            <head>
                <title>horariParc.xml</title>
                <meta charset="UTF-8"/>
                <link rel="stylesheet" type="text/css" href="horariParc.css"/>
            </head>
            <body>
                <header class="capcalera">
                    <span>
                        <img alt="logoParc" width="50" height="50" src="logo.jpg"/>
                    </span>
                    <span class="nom">
                        <xsl:value-of select="parc/@nom"/>
                    </span>
                </header>
                <header class="dades">Obrim del <xsl:value-of select="parc/dates/dataObertura"/> al <xsl:value-of select="parc/dates/dataTancament"/>
            </header>
            <header class="mes">
                <xsl:value-of select="parc/horaris/mes/@nom"/>
            </header>
            <section>
                <table>
                    <tr>
                        <th><div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana[text()='Dilluns']"/></div></th>
                        <th><div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana[text()='Dimarts']"/></div></th>
                        <th><div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana[text()='Dimecres']"/></div></th>
                        <th><div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana[text()='Dijous']"/></div></th>
                        <th><div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana[text()='Divendres']"/></div></th>
                        <th><div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana[text()='Dissabte']"/></div>
                        </th><th><div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana[text()='Diumenge']"/></div></th>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="dia">1</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">2</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="dia">3</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">4</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">5</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">6</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">7</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">8</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">9</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="dia">10</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">11</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">12</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">13</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">14</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">15</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">16</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="dia">17</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">18</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">19</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">20</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">21</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">22</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">23</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <div class="dia">24</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">25</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">26</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">27</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">28</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">29</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                        <td>
                            <div class="dia">30</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="dia">31</div>
                            <div><xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaObertura"/> - <xsl:value-of select="parc/horaris/mes/periode/diaSetmana/@horaTancament"/></div>
                        </td>
                    </tr>
                </table>
            </section>
            <footer class="dades">
                <div>
                    <xsl:value-of select="parc/adreca"/>
                </div>
                <div>
                    <xsl:value-of select="parc/ciutat"/>
 -                    <xsl:value-of select="parc/pais"/>
                </div>
                <div>
                web: 
                    <a href="http://www.coperaventura.com">
                        <xsl:value-of select="parc/paginaWeb"/>
                    </a>
                </div>
            </footer>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
