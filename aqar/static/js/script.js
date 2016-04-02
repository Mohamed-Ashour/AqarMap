$(function(){
	//$('.nav-tabs').tab();
	$('.ts').click(function(){
		$('.ts').each(function(i){
			$(this).removeClass('active');
		});
		$(this).addClass('active');
	});

    $('.Hts').click(function(){
		$('.Hts').each(function(i){
			$(this).removeClass('active');
		});
		$(this).addClass('active');
	});

	$('#id_city').change(function(){
        if($('#id_city').val() == "cairo"){
            $('#area').remove();
            $('#area_lable').remove();
            $('#id_city').after('<label class="bold" for="area" id="area_lable">Area:</label> <select name="area" id="area" class="form-control margin_10"><option value="0" selected="selected" label="New Cairo Fifth District">New Cairo Fifth District</option><option value="1" label="6th Of October">6th Of October</option><option value="2" label="El Sheikh Zayed City">El Sheikh Zayed City</option><option value="3" label="Heliopolis">Heliopolis</option><option value="4" label="Nasr City">Nasr City</option><option value="5" label="El Maadi">El Maadi</option><option value="6" label="El Shorouk &amp; New Heliopolis">El Shorouk &amp; New Heliopolis</option><option value="7" label="El Oubour">El Oubour</option><option value="8" label="El Hadabh El Wosta">El Hadabh El Wosta</option><option value="9" label="Rehab &amp; Madinaty">Rehab &amp; Madinaty</option><option value="10" label="Faisal">Faisal</option><option value="11" label="Alex-Cairo Desert Road">Alex-Cairo Desert Road</option><option value="12" label="El Zamalek">El Zamalek</option><option value="13" label="El Mohandesen">El Mohandesen</option><option value="14" label="Dokki">Dokki</option><option value="15" label="El Haram">El Haram</option><option value="16" label="El Jizah district">El Jizah district</option><option value="17" label="Mokattam">Mokattam</option><option value="18" label="Helwan">Helwan</option><option value="19" label="Ain Shams">Ain Shams</option><option value="20" label="Badr City">Badr City</option><option value="21" label="10th of Ramadan">10th of Ramadan</option><option value="22" label="Garden City">Garden City</option><option value="23" label="Downtown">Downtown</option><option value="24" label="El Zaytun">El Zaytun</option><option value="25" label="EL Koba Gardens">EL Koba Gardens</option><option value="26" label="Hadayek El Ahram">Hadayek El Ahram</option><option value="27" label="Shoubra">Shoubra</option><option value="28" label="Imbaba">Imbaba</option><option value="29" label="El Agouza">El Agouza</option><option value="30" label="Manial">Manial</option><option value="31" label="El Abbasiya">El Abbasiya</option><option value="32" label="15th of May">15th of May</option><option value="33" label="Other Neighborhoods">Other Neighborhoods</option></select>');
        }
        else if($('#id_city').val() == "alexandria"){
            $('#area').remove();
            $('#area_lable').remove();
            $('#id_city').after('<label class="bold" for="area" id="area_lable" >Area:</label> <select name="area" id="area" class="form-control margin_10"><option value="0" selected="selected" label="Smouha">Smouha</option> <option value="1" label="Roshdy">Roshdy</option> <option value="2" label="San Stefano">San Stefano</option> <option value="3" label="Miami">Miami</option> <option value="4" label="Kafr Abdo">Kafr Abdo</option> <option value="5" label="Sidi Gaber">Sidi Gaber</option> <option value="6" label="Lauran">Lauran</option> <option value="7" label="Victoria ">Victoria</option> <option value="8" label="Sidi Bishr ">Sidi Bishr</option> <option value="9" label="El Hanouvel">El Hanouvel</option> <option value="10" label="Borg El Arab">Borg El Arab</option> <option value="11" label="El Bitash">El Bitash</option> <option value="12" label="Camp Cesar">Camp Cesar</option> <option value="13" label="El Seyouf ">El Seyouf</option> <option value="14" label="Glim ">Glim</option> <option value="15" label="Abo Qir">Abo Qir</option> <option value="16" label="El Mandara">El Mandara</option> <option value="17" label="El Asafra">El Asafra</option> <option value="18" label="Moharram Bey">Moharram Bey</option> <option value="19" label="Ibrahimia">Ibrahimia</option> <option value="20" label="Fleming">Fleming</option> <option value="21" label="Stanley">Stanley</option> <option value="22" label="Bolekly">Bolekly</option> <option value="23" label="Zezenia">Zezenia</option> <option value="24" label="Bakoos">Bakoos</option> <option value="25" label="Ganaklis">Ganaklis</option> <option value="26" label="El Mamoura ">El Mamoura</option> <option value="27" label="Sporting">Sporting</option> <option value="28" label="Saba Basha">Saba Basha</option> <option value="29" label="El Hadara">El Hadara</option> <option value="30" label="El Chatby">El Chatby</option> <option value="31" label="King Maryot">King Maryot</option> <option value="32" label="Cleopatra">Cleopatra</option> <option value="33" label="Mansheya">Mansheya</option> <option value="34" label="Bahray El Anfoshy">Bahray El Anfoshy</option> <option value="35" label="El Montazah">El Montazah</option> <option value="36" label="El Amreya">El Amreya</option> <option value="37" label="6 October/Shatee El-Nakheel">6 October/Shatee El-Nakheel</option> <option value="38" label="Abu Yusuf">Abu Yusuf</option> <option value="39" label="Abu Talat">Abu Talat</option> <option value="40" label="Other Neighborhoods">Other Neighborhoods</option> </select>');
        }
        else {
            $('#area').remove();
            $('#area_lable').remove();
        }
    });

    $('#min_price').change(function(){
        min_price = parseInt($('#min_price').val());
        $('.max_option').removeClass('hidden');
        switch (min_price) {
            case 100000:
                $('.max_100').addClass('hidden');
                break;
            case 250000:
                $('.max_100').addClass('hidden');
                $('.max_250').addClass('hidden');
                break;
            case 500000:
                $('.max_100').addClass('hidden');
                $('.max_250').addClass('hidden');
                $('.max_500').addClass('hidden');
                break;
            case 750000:
                $('.max_100').addClass('hidden');
                $('.max_250').addClass('hidden');
                $('.max_500').addClass('hidden');
                $('.max_750').addClass('hidden');
                break;
            case 1000000:
                $('.max_100').addClass('hidden');
                $('.max_250').addClass('hidden');
                $('.max_500').addClass('hidden');
                $('.max_750').addClass('hidden');
                $('.max_1000').addClass('hidden');
                break;
            case 2000000:
                $('.max_100').addClass('hidden');
                $('.max_250').addClass('hidden');
                $('.max_500').addClass('hidden');
                $('.max_750').addClass('hidden');
                $('.max_1000').addClass('hidden');
                $('.max_2000').addClass('hidden');
                break;
            case 5000000:
                $('.max_100').addClass('hidden');
                $('.max_250').addClass('hidden');
                $('.max_500').addClass('hidden');
                $('.max_750').addClass('hidden');
                $('.max_1000').addClass('hidden');
                $('.max_2000').addClass('hidden');
                $('.max_5000').addClass('hidden');
                break;
        }
    });

    $('#max_price').change(function(){
        max_price = parseInt($('#max_price').val());
        $('.min_option').removeClass('hidden');

        switch (max_price) {
            case 100000:
                $('.min_100').addClass('hidden');
                $('.min_250').addClass('hidden');
                $('.min_500').addClass('hidden');
                $('.min_750').addClass('hidden');
                $('.min_1000').addClass('hidden');
                $('.min_2000').addClass('hidden');
                $('.min_5000').addClass('hidden');
                break;
            case 250000:
                $('.min_250').addClass('hidden');
                $('.min_500').addClass('hidden');
                $('.min_750').addClass('hidden');
                $('.min_1000').addClass('hidden');
                $('.min_2000').addClass('hidden');
                $('.min_5000').addClass('hidden');
                break;
            case 500000:
                $('.min_500').addClass('hidden');
                $('.min_750').addClass('hidden');
                $('.min_1000').addClass('hidden');
                $('.min_2000').addClass('hidden');
                $('.min_5000').addClass('hidden');
                break;
            case 750000:
                $('.min_750').addClass('hidden');
                $('.min_1000').addClass('hidden');
                $('.min_2000').addClass('hidden');
                $('.min_5000').addClass('hidden');
                break;
            case 1000000:
                $('.min_1000').addClass('hidden');
                $('.min_2000').addClass('hidden');
                $('.min_5000').addClass('hidden');
                break;
            case 2000000:
                $('.min_2000').addClass('hidden');
                $('.min_5000').addClass('hidden');
                break;
            case 5000000:
                $('.min_5000').addClass('hidden');
                break;
        }
    });

});
