FROM ubuntu:22.04 as build
LABEL author="chandu"
RUN mkdir /Nop
RUN apt update && \
    apt install wget unzip -y && \
        cd /Nop && \
	    wget "https://github.com/nopSolutions/nopCommerce/releases/download/release-4.50.3/nopCommerce_4.50.3_NoSource_linux_x64.zip" &&\
	        unzip /Nop/nopCommerce_4.50.3_NoSource_linux_x64.zip && \
		    rm /Nop/nopCommerce_4.50.3_NoSource_linux_x64.zip
FROM mcr.microsoft.com/dotnet/aspnet:6.0
COPY  --from=build /Nop /Nop
WORKDIR /Nop
EXPOSE 80
CMD ["dotnet","/Nop/Nop.Web.dll","run","--server.urls=http://0.0.0.0:*"]
