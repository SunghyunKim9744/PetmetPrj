window.addEventListener("load", function() {

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level: 3 // 지도의 확대 레벨
		};

	var map = new kakao.maps.Map(mapContainer, mapOption);

	var marker = new kakao.maps.Marker({
		// 지도 중심좌표에 마커를 생성
		position: map.getCenter()
	});

	marker.setMap(map);

});